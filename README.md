# Azure Resource Manager (ARM) Templates

[![Build Status](https://dev.azure.com/rohopkin/PFE-DevOps/_apis/build/status/Hoppy7.ArmTemplates?branchName=master)](https://dev.azure.com/rohopkin/PFE-DevOps/_build/latest?definitionId=32&branchName=master)

## Compute
Microsoft.Compute

- imageBuilder.json

    ARM template to build images and distibute them via SIG

- vm.Base.json

    Standardized base layer VM template

- vm.extensions.omsAgent.json

    ARM template to deploy the omsAgent to the target VM

<br>

## ContainerRegistry
Microsoft.ContainerRegistry

- containerRegistry.json

    ARM template to deploy an Azure Container Registry instance

<br>

## DataFactory
Microsoft.DataFactory

- dataFactory.json

    ARM template to deploy an Azure Data Factory instance

<br>

## FrontDoor
Microsoft.FrontDoor

- frontDoor.json

    ARM template to deploy a dynamic, fully configured Front Door instance

<br>

## Logic
Microsoft.Logic

- logicApp.diagnosticSetting.json

    ARM template that enables the diagnostic setting on the target Logic App and forwards the telemetry to the specified Log Analytics workspace

- logicApp.listCallBackUrl.json

    Simple ARM template example to dynamically retrieve another Logic App's CallbackURL and hit it with a HTTP POST

<br>

## Network
Microsoft.Network

- vnet.json

    ARM template to deploy a standardized virtual network configuration

- vnet.spoke.json

    ARM template that deploys a virtual network and peers it to the specified hub remote virtual network

<br>

## SQL
Microsoft.SQL

- sql.json

    Deploys a fully configured SQL server and database instances

<br>

## Telemetry
Microsoft.Automation <br>
Microsoft.Insights <br>
Microsoft.OperationalInsights


- frontDoor.backendFailoverAlert.json

    Azure Monitor alerts for when traffic hits the specified site in the FrontDoor's backend pool

- resourceHealthAlerts.json

    Azure Monitor Resource Health Alerts

- serviceHealthAlerts.json

    Azure Monitor Service Health Alerts

- serviceHealthAlerts.webhook.json

    Azure Monitor Service Health Alerts - webhook only

- telemetry.json

    ARM template to deploy Azure Automation, Log Analytics, & App Insights

<br>

## Web

- function.json

    ARM template to deploy a Function App infra

- appService.json

    ARM template to deploy an App Service infra