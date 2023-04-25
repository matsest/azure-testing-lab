param location string = resourceGroup().location

module stg '../modules/storage.bicep' = {
  name: 'storage-pass'
  params: {
    name: 'stgatl${uniqueString(resourceGroup().id)}'
    location: location
    httpsOnly: true
    minimumTlsVersion: 'TLS1_2'
    tags: {
      'Data classification': 'public'
    }
  }
}

output name string = stg.outputs.name
