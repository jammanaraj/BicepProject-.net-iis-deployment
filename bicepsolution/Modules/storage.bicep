param storageaccountname string
param location string = resourceGroup().id
resource exampleStorage 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageaccountname
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
