module webappdeployment 'Modules/webapp.bicep' = {
  name: 'webappdeployment'
  params: {
    webappname: 'bicepwebapp'
    location: 'eastus'
  }
}
