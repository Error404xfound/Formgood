param sqlServerName string
param sqlDatabaseName string
param adminUsername string
param adminPassword string

resource sqlServer 'Microsoft.Sql/servers@2021-02-01-preview' = {
  name: sqlServerName
  location: resourceGroup().location
  properties: {
    administratorLogin: adminUsername
    administratorLoginPassword: adminPassword
    version: '12.0'
  }
}

resource sqlDatabase 'Microsoft.Sql/servers/databases@2021-02-01-preview' = {
  name: sqlDatabaseName
  parent: sqlServer
  properties: {
    edition: 'Basic'
    requestedServiceObjective: 'Basic'
  }
}

output sqlServerConnectionString string = 'Server=tcp:${sqlServer.name}.database.windows.net;Database=${sqlDatabase.name};User ID=${adminUsername};Password=${adminPassword};Encrypt=true;TrustServerCertificate=false;Connection Timeout=30;'