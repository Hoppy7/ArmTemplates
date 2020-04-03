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

function Invoke-ArmTemplateCiBuild {
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

    #$path = "$(Build.SourcesDirectory)\ArmTemplates";
    $directory = Get-ChildItem -Path $path -Recurse -Force;
    $uniqueDirs = $directory.directory | Select-Object -Unique;

    describe "armTemplateValidation" {
        foreach ($dir in $uniqueDirs) {

            $armTemplates = Get-ChildItem -Path $dir.Fullname -Filter "*.json" -Exclude "*$paramFileSuffix*" -Recurse -Depth 0 -Force;

            foreach ($armT in $armTemplates) {

                it "$($armT.FullName)" {

                    $deploySplat = @{};
                    $deploySplat.Add("Mode", "Complete");
                    $deploySplat.Add("TemplateFile", $armT.FullName);    
        
                    $paramfileName = $armT.Name.Substring(0, $armT.Name.LastIndexOf(".")) + ".$paramFileSuffix";
                    $paramFilePath = $armT.FullName.Replace($armT.Name, $paramfileName);
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

Invoke-ArmTemplateCiBuild -resourceGroupName $resourceGroupName -location $location -path $path -paramFileSuffix $paramFileSuffix;