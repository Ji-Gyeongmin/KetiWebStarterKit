define ['app', 'angular-ui-router', 'controllers/first']
, (app)->
  return app.config ($stateProvider, $urlRouterProvider)->

    $urlRouterProvider.otherwise '/view1'

    $stateProvider
    .state 'view1',
      url : '/view1'
      templateUrl : '../partials/view1.html'
      controller: 'FirstController'
