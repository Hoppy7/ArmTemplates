# Azure Resource Manager (ARM) Templates
[![Build Status](https://dev.azure.com/hoppy7/Azure/_apis/build/status/Hoppy7.ArmTemplates?branchName=master)](https://dev.azure.com/hoppy7/Azure/_build/latest?definitionId=5&branchName=master)

<br>

## Compute

### imageBuilder.json

Build virtual machine images and distibute them via Shared Image Gallery (SIG)

<br>

### vm.availabilitySet.json

Deploys VMs into an availability set with configurable upgrade and fault domains

<br>

### vm.availabilityZone.json
Dynamically distibutes and deploys VMs into availability zones

<br>

### vm.base.json

Standardized base layer VM ARM template

<br>

### vm.dsc.json

Deploys VMs and configures them with the Azure Automation DSC extension

<br>

### vm.extensions.omsAgent.json

Deploys the omsAgent to the target VM

<br>

## ContainerRegistry

### containerRegistry.json

Deploys an Azure Container Registry instance

<br>

## DataFactory

### dataFactory.json

Deploys an Azure Data Factory instance

<br>

## FrontDoor

### frontDoor.json

Deploys a dynamic, fully configured Front Door instance

<br>

## Logic

### logicApp.diagnosticSetting.json

Enables the diagnostic setting on the target Logic App, configured to forward telemetry to the specified Log Analytics workspace

<br>

### logicApp.listCallBackUrl.json

Simple ARM template example to dynamically retrieve another Logic App's CallbackURL and hit it with a HTTP POST

<br>

## Network

### vnet.json

Deploys a standardized virtual network configuration

<br>

### vnet.spoke.json

Deploys a virtual network and peers it to the specified hub remote virtual network

<br>

## SQL

### sql.json

Deploys a SQL server and database instances

<br>

## Telemetry

### frontDoor.backendFailoverAlert.json

Azure Monitor alerts for when traffic hits the specified site in the FrontDoor's backend pool

<br>

### resourceHealthAlerts.json

Azure Monitor Resource Health Alerts

<br>

### serviceHealthAlerts.json

Azure Monitor Service Health Alerts

<br>

### serviceHealthAlerts.webhook.json

Azure Monitor Service Health Alerts ### webhook only

<br>

### telemetry.json

Deploys Azure Automation, Log Analytics, & App Insights resources

<br>

## Web

### appService.json

Deploys App Service infra

<br>

### function.json

Deploys Function App infra

<br>

### function.vnetIntegrated.json

Deploys a new subnet and Vnet-integrated Function App infra

<br>