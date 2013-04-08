App.ApplicationController = Ember.Controller.extend
  isHome: (->
    @get('currentRoute') == 'home'
  ).property('currentRoute')

  isPatients: (->
    @get('currentRoute') == 'patients'
  ).property('currentRoute')
