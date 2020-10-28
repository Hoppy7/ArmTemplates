[CmdletBinding()]
param
(
    [Parameter(Mandatory = $true)]
    [string]$resourceGroupName,

    [Parameter(Mandatory = $true)]
    [string]$location,

    [Parameter(Mandatory = $true)]
    [string]$path,

    [Parameter(Mandatory = $true)]
    [string]$paramFileSuffix
)

function Invoke-ciBuild {
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $true)]
        [string]$resourceGroupName,

        [Parameter(Mandatory = $true)]
        [string]$location,

        [Parameter(Mandatory = $true)]
        [string]$path,

        [Parameter(Mandatory = $true)]
        [string]$paramFileSuffix
    )

    $directory = Get-ChildItem -Path $path -Recurse -Force;
    $uniqueDirs = $directory.directory | ? { $_.FullName -notmatch ".git" -and $_.Name -ne "s" } | Select-Object -Unique;

    describe "armTemplateValidation" {
        
        foreach ($dir in $uniqueDirs) {

            $armTemplates = Get-ChildItem -Path $dir.Fullname -Filter "*.json" -Exclude "*$paramFileSuffix*" -Recurse -Depth 0 -Force;

            foreach ($arm in $armTemplates) {

                it "$($arm.Name)" {

                    $deploySplat = @{};
                    $deploySplat.Add("Mode", "Complete");
                    $deploySplat.Add("TemplateFile", $arm.FullName);    
        
                    $paramfileName = $arm.Name.Substring(0, $arm.Name.LastIndexOf(".")) + ".$paramFileSuffix";
                    $paramFilePath = $arm.FullName.Replace($arm.Name, $paramfileName);
                    $paramFile = Test-Path -Path $paramFilePath;

                    if ($paramFile) {
                        $deploySplat.Add("TemplateParameterFile", $paramFilePath);
                    }

                    $rg = New-AzResourceGroup -Name $resourceGroupName -Location $location -Force;
                    $rg | Test-AzResourceGroupDeployment @deploySplat -ErrorAction Stop | Should BeNullOrEmpty;
                }
            }
        }
    }
}

Invoke-ciBuild -resourceGroupName $resourceGroupName -location $location -path $path -paramFileSuffix $paramFileSuffix;