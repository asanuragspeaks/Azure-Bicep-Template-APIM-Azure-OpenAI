param location string = resourceGroup().location
param apimName string = 'my-apim-service'
param openaiName string = 'my-openai-service'

resource apim 'Microsoft.ApiManagement/service@2021-08-01' = {
  name: apimName
  location: location
  sku: {
    name: 'Developer'
    capacity: 1
  }
  properties: {
    publisherEmail: 'admin@example.com'
    publisherName: 'YourCompany'
  }
}

resource openai 'Microsoft.CognitiveServices/accounts@2023-05-01' = {
  name: openaiName
  location: location
  sku: {
    name: 'S0'
  }
  kind: 'OpenAI'
  properties: {
    apiProperties: {
      enableTokenAuth: true
    }
  }
}