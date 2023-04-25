param location string = resourceGroup().location

module stg '../modules/storage.bicep' = {
  name: 'storage-fail'
  params: {
    name: 'stgfl${uniqueString(resourceGroup().id)}'
    location: location
    httpsOnly: false
    minimumTlsVersion: 'TLS1_1'
    tags: {
      Integrity: 'High'
    }
  }
}

output name string = stg.outputs.name
