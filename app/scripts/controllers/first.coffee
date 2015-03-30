define ['app', 'services/tester', 'filters/reverse', 'directives/version'], (app)->
  app.controller 'FirstController', ($scope, tester)->
    $scope.$emit 'updateCSS', ['css/css1.css']
    $scope.message = "I'm the 2nd controller! "  + tester
    $scope.greeting = "Hello world!"
    $scope.test = $scope.test || 0;
