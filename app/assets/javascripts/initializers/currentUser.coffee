Ember.Application.initializer
  name: 'currentUser'

  initialize: (container) ->
    store = container.lookup('store:main')
    attributes = $('meta[name="current-user"]').attr('content')

    object          = store.load(App.CurrentUser, JSON.parse(attributes))
    App.currentUser = App.CurrentUser.find(object.id)
