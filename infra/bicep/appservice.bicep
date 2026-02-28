param appServiceName string
param appServicePlanName string
param appServicePlanResourceId string
param location string = resourceGroup().location
param sku string = 'S1'

resource appService 'Microsoft.Web/sites@2021-02-01' = {
  name: appServiceName
  location: location
  kind: 'app'
  properties: {
    serverFarmId: appServicePlanResourceId
    httpsOnly: true
  }
}

output appServiceUrl string = 'https://${appService.name}.azurewebsites.net'
