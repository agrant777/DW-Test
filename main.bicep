param sku string = 'F1'
param location string = resourceGroup().location
param websiteTimeZoneAUS string = 'AUS Eastern Standard Time'
param websiteTimeZoneUK string = 'GMT Standard Time'

resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: 'Default1eg'
  location: location
  sku: {
    name: sku
  }
}
resource appService 'Microsoft.Web/sites@2020-06-01' = {
  name: 'DW-Tech-Test-AUS'
  location: location
  properties: {
    enabled: true
    serverFarmId: appServicePlan.id
      siteConfig: {
        windowsFxVersion: 'DOTNETCORE|3.0'
        detailedErrorLoggingEnabled: true
        websiteTimeZone: websiteTimeZoneAUS
      }
      
    }
  }

resource appService2 'Microsoft.Web/sites@2020-06-01' = {
    name: 'DW-Tech-Test-UK1'
    location: location
    properties: {
      enabled: true
      serverFarmId: appServicePlan.id
        siteConfig: {
          windowsFxVersion: 'DOTNETCORE|3.0'
          detailedErrorLoggingEnabled: true
          websiteTimeZone: websiteTimeZoneUK
        }
        
      }
    }

  resource appService3 'Microsoft.Web/sites@2020-06-01' = {
      name: 'DW-Tech-Test-UK2'
      location: location
      properties: {
        enabled: true
        serverFarmId: appServicePlan.id
          siteConfig: {
            windowsFxVersion: 'DOTNETCORE|3.0'
            detailedErrorLoggingEnabled: true
            websiteTimeZone: websiteTimeZoneUK
          }
          
        }
      }

    
