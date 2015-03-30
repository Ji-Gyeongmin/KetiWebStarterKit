console.log 'tefe'

tests = []
for file of window.__karma__.files
  console.log file
  if window.__karma__.files.hasOwnProperty(file)
    if /spec\.js$/.test(file)
      tests.push(file)
console.log tests
#requirejs.config
#  baseUrl: ''
#  paths:
#    angular: '../libs/angular/angular'
#    jquery : '../libs/jquery/dist/jquery'
#    'angular-ui-router' : '../libs/angular-ui-router/release/angular-ui-router'
#    'angular-material' : '../libs/angular-material/angular-material'
#    'angular-aria' : '../libs/angular-aria/angular-aria'
#    'angular-animate' : '../libs/angular-animate/angular-animate'
#    'angular-mocks' : '../libs/angular-mocks/angular-mocks'
#  shim:
#    angular :
#      deps: ['jquery']
#      exports: 'angular'
#    app :
#      deps: ['angular']
#    routes :
#      deps: ['angular']
#    'angular-material' :
#      deps: ['angular-aria', 'angular-animate']
#
#  deps : tests
#
#  callback : window.__karma__.start

require ['base/app/scripts/main'], (config)->

  config.baseUrl = 'base/app/scripts'
  config.deps = window.tests
  config.callback = window.__karma__.start

  config.paths['angular-mocks'] = '../libs/angular-mocks/angular-mocks'
  config.shim['angular-mocks'] = ['angular']

  require.config config
