@description('App service name')
param webappname string
param location string = 'eastus'
resource azureasp 'Microsoft.Web/serverfarms@2021-03-01' = {
  name: 'biceppoc'
  location: location
  sku:{
    tier: 'Free'
    name: 'F1'
  }
}

resource azurewebapp 'Microsoft.Web/sites@2021-03-01' = {
  name: webappname
  location: location
  properties:{
    serverFarmId: azureasp.id
  }
}
