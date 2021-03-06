App.Store = DS.Store.extend
  revision: 12
  adapter: DS.RESTAdapter.create
    bulkCommit: false

App.RestAdapter = DS.RESTAdapter.extend
  ajax: (url, type, hash) ->
    hash.url = url
    hash.type = type
    hash.dataType = 'json'
    hash.contentType = 'application/json; charset=utf-8'
    hash.headers = @_setCustomHeaders hash.headers
    hash.context = this

    if hash.data and type isnt 'GET'
      hash.data = JSON.stringify(hash.data)

    jQuery.ajax(hash)

  _setCustomHeaders: (hash, user = App.currentUser) ->
    headers                   = hash || {}
    headers['X-Bearer-Token'] = user.get('bearerToken')
    headers['X-Uid']          = user.id
    headers['X-App-Name']     = user.get('appName')

    headers

App.RestAdapter.registerTransform 'array',
  serialize: (value) ->
    return value

  deserialize: (value) ->
    return value


App.Store.registerAdapter('App.Patient', App.RestAdapter.extend
  bulkCommit: false
  namespace: 'api/v1'
  url: 'http://icis-patient-example.herokuapp.com'
)

App.Store.registerAdapter('App.User', App.RestAdapter.extend
  bulkCommit: false
  namespace: 'api/v1'
  url: 'http://icis-users-example.herokuapp.com'
)

App.Store.registerAdapter('App.Appointment', App.RestAdapter.extend
  bulkCommit: false
  namespace: 'api/v1'
  url: 'http://icis-appointment-example.herokuapp.com'
)
