param appServicePlanId string
param windowsFxVersion string
param webAppName string
param websiteTimeZone string
var location = resourceGroup().location

resource appService 'Microsoft.Web/sites@2020-06-01' = {
  name: webAppName
  location: location
  properties: {
    enabled: true
    serverFarmId: appServicePlanId
      siteConfig: {
        windowsFxVersion: windowsFxVersion
        detailedErrorLoggingEnabled: true
        websiteTimeZone: websiteTimeZone
      }
      
    }
  }
