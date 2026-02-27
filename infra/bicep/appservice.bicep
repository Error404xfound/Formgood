param appServiceName string
param appServicePlanName string
param location string = resourceGroup().location
param sku string = 'S1'

resource appService 'Microsoft.Web/sites@2021-02-01' = {
  name: appServiceName
  location: location
  kind: 'app'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
  sku: {
    name: sku
    tier: 'Standard'
    capacity: 1
  }
}

output appServiceUrl string = 'https://${appService.name}.azurewebsites.net'