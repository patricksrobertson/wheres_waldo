App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map ->
  @resource 'patients', ->
  @resource 'users', ->
  @resource 'appointments', ->
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

App.UsersIndexRoute = Ember.Route.extend
  model: ->
    App.User.find()

  setupController: (controller, model) ->
    controller.set('users', model)
    @controllerFor('application').set('currentRoute', 'users')

App.AppointmentsIndexRoute = Ember.Route.extend
  model: ->
    App.Appointment.find()

  setupController: (controller, model) ->
    controller.set('appointments', model)
    @controllerFor('application').set('currentRoute', 'appointments')

App.AppointmentsNewRoute = Ember.Route.extend
  model: ->
    App.Appointment.createRecord()

  setupController: (controller, model) ->
    @_super(controller, model)
    controller.set('content', model)
    controller.set('patients', App.Patient.find())
    controller.set('users', App.User.find())
    @controllerFor('application').set('currentRoute', 'appointments')
