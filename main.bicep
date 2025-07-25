param location string = resourceGroup().location
param vnetName string = 'prod-vnet'
param addressPrefix string = '10.0.0.0/16'

module network 'network.bicep' = {
  name: 'networkModule'
  params: {
    location: location
    vnetName: vnetName
    addressPrefix: addressPrefix
  }
}

module nsg 'nsg.bicep' = {
  name: 'nsgModule'
  params: {
    location: location
  }
}

