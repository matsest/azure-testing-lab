@minLength(3)
@maxLength(24)
param name string = 'stgatl${uniqueString(resourceGroup().id)}'
param location string = 'norwayeast'
param tags object = {
  'Data classification': 'public'
}

param minimumTlsVersion string = 'TLS1_2'
param httpsOnly bool = true

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: name
  location: location
  tags: tags
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    minimumTlsVersion: minimumTlsVersion
    supportsHttpsTrafficOnly: httpsOnly
  }
}

output name string = storageaccount.name
