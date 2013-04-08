App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map ->
  @resource 'patients', ->
  @resource 'users', ->

App.IndexRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'home')

App.PatientsIndexRoute = Ember.Route.extend
  model: ->
    App.Patient.find()

  setupController: (controller, model) ->
    controller.set('patients', model)
    @controllerFor('application').set('currentRoute', 'patients')

App.UsersIndexRoute = Ember.Route.extend
  model: ->
    App.User.find()

  setupController: (controller, model) ->
    controller.set('users', model)
    @controllerFor('application').set('currentRoute', 'users')
