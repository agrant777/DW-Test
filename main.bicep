param sku string = 'F1'
param location string = resourceGroup().location
param webApp object

resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: 'Default1eg'
  location: location
  sku: {
    name: sku
  }
}
module app1 'modules/appService.bicep' = {
  name: 'DW-Tech-2-AUS'
  params: {
    webAppName: webApp.name
    websiteTimeZone: 'AUS Eastern Standard Time'
    appServicePlanId: appServicePlan.id
    windowsFxVersion: webApp.windowsFxVersion
  }
}

module app2 'modules/appService.bicep' = {
  name: 'DW-Tech-2-UK1'
  params: {
    webAppName: webApp.name
    websiteTimeZone: 'GMT Standard Time'
    appServicePlanId: appServicePlan.id
    windowsFxVersion: webApp.windowsFxVersion
  }
}

module app3 'modules/appService.bicep' = {
  name: 'DW-Tech-2-UK2'
  params: {
    webAppName: webApp.name
    websiteTimeZone: 'GMT Standard Time'
    appServicePlanId: appServicePlan.id
    windowsFxVersion: webApp.windowsFxVersion
  }
}

