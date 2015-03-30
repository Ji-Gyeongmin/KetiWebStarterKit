define [ 'angular', 'angular-ui-router', 'angular-material' ]
, (angular)->
  app = angular.module 'app', ['ui.router', 'ngMaterial']

  app.controller 'CommonController', ($scope)->
    $scope.$on 'updateCSS', (event, args)->
      $scope.stylesheets = args

  return app
