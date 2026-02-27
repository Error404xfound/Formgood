param appName string
param location string = resourceGroup().location

var appServicePlanName = '${appName}-asp'
var webAppName = '${appName}-web'
var sqlServerName = '${appName}sql'
var sqlDatabaseName = '${appName}db'
var storageAccountName = toLower('${appName}storage')

resource appServicePlan 'Microsoft.Web/serverfarms@2021-02-01' = {
  name: appServicePlanName
  location: location
  sku: {
    name: 'S1'
    tier: 'Standard'
    capacity: 1
  }
}

resource webApp 'Microsoft.Web/sites@2021-02-01' = {
  name: webAppName
  location: location
  serverFarmId: appServicePlan.id
  siteConfig: {
    appSettings: [
      {
        name: 'AzureWebJobsStorage'
        value: 'DefaultEndpointsProtocol=https;AccountName=${storageAccountName};AccountKey=<your_account_key>;EndpointSuffix=core.windows.net'
      }
      {
        name: 'WEBSITE_RUN_FROM_PACKAGE'
        value: '1'
      }
    ]
  }
}

resource sqlServer 'Microsoft.Sql/servers@2021-02-01-preview' = {
  name: sqlServerName
  location: location
  properties: {
    administratorLogin: '<your_admin_username>'
    administratorLoginPassword: '<your_admin_password>'
  }
}

resource sqlDatabase 'Microsoft.Sql/servers/databases@2021-02-01-preview' = {
  name: sqlDatabaseName
  parent: sqlServer
  properties: {
    edition: 'Standard'
    requestedServiceObjective: 'S0'
  }
}

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

output webAppUrl string = webApp.defaultHostName
output sqlConnectionString string = 'Server=tcp:${sqlServerName}.database.windows.net;Database=${sqlDatabaseName};User ID=<your_admin_username>@${sqlServerName};Password=<your_admin_password>;Encrypt=true;Connection Timeout=30;'