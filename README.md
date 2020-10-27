# Azure Resource Manager (ARM) Templates

[![Build Status](https://dev.azure.com/rohopkin/PFE-DevOps/_apis/build/status/Hoppy7.ArmTemplates?branchName=master)](https://dev.azure.com/rohopkin/PFE-DevOps/_build/latest?definitionId=32&branchName=master)

## Compute

### imageBuilder.json

Build virtual machine images and distibute them via Shared Image Gallery (SIG)

<br>

### vm.Base.json

Standardized base layer VM ARM template

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

### function.json

Deploys Function App infra

<br>

### appService.json

Deploys App Service infra