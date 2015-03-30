
config =
  baseUrl: 'scripts'
  paths:
    angular: '../libs/angular/angular'
    jquery : '../libs/jquery/dist/jquery'
    'angular-ui-router' : '../libs/angular-ui-router/release/angular-ui-router'
    'angular-material' : '../libs/angular-material/angular-material'
    'angular-aria' : '../libs/angular-aria/angular-aria'
    'angular-animate' : '../libs/angular-animate/angular-animate'
  shim:
    angular :
      deps: ['jquery']
      exports: 'angular'
    app :
      deps: ['angular']
    routes :
      deps: ['angular']
    'angular-material' :
      deps: ['angular-aria', 'angular-animate']

if window.__karma__
  define config
else
  requirejs.config config
  requirejs ['jquery', 'angular', 'app', 'routes']
  , ($, angular)->
    $(document).ready ()->
      angular.bootstrap document, ['app']
