define ['angular-mocks', 'controllers/first'], ->
  describe 'HomeController in app.home', ->
    scope = null
    subject = null

    beforeEach ->
      module 'app'

      inject ($rootScope, $controller) ->
        scope = $rootScope.$new()
        subject = $controller 'FirstController', $scope: scope

    describe 'check if controller is on it\'s place', ->
      it 'should have loaded the subject', ->
        expect(subject).toBeDefined()

    describe 'check if scope is also on it\'s place', ->
      it 'should test scope to be defined', ->
        expect(scope).toBeDefined()
