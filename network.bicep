
param location string
param vnetName string
param addressPrefix string

resource vnet 'Microsoft.Network/virtualNetworks@2023-04-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        addressPrefix
      ]
    }
    subnets: [
      {
        name: 'web-subnet'
        properties: {
          addressPrefix: '10.0.1.0/24'
        }
      }
      {
        name: 'app-subnet'
        properties: {
          addressPrefix: '10.0.2.0/24'
        }
      }
      {
        name: 'db-subnet'
        properties: {
          addressPrefix: '10.0.3.0/24'
        }
      }
      {
        name: 'bastion-subnet'
        properties: {
          addressPrefix: '10.0.4.0/24'
        }
      }
    ]
  }
}
