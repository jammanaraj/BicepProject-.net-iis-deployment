@description('Specifies the location for resources.')
param location string = 'eastus'

module webappdeployment 'Modules/webapp.bicep' = {
  name: 'webappdeployment'
  params: {
    webappname: 'bicepwebapp'
    location: location
  }
}

module storagedeployment 'Modules/storage.bicep' = {
  name: 'storagedeployment'
  params: {
    storageaccountname: 'bicepdata'
    location: location
  }
}
