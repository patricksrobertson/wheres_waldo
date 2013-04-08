App.ApplicationController = Ember.Controller.extend
  isHome: (->
    @get('currentRoute') is 'home').property('currentRoute')

  isPatients: (->
    @get('currentRoute') is 'patients').property('currentRoute')

  isUsers: (->
    @get('currentRoute') is 'users').property('currentRoute')
