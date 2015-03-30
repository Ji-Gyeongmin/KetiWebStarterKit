define ['app'], (app)->
  app.directive 'appVersion', ()->
    return (scope, elm, attrs)->
      elm.text "1.0.0"
