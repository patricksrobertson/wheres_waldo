App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map ->
  @resource 'patients', ->
    @route 'new'

App.IndexRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'home')

App.PatientsIndexRoute = Ember.Route.extend
  model: ->
    App.Patient.find()

  setupController: (controller, model) ->
    controller.set('patients', model)
    @controllerFor('application').set('currentRoute', 'patients')
