App.Store = DS.Store.extend
  revision: 11
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

    if hash.data and type is not 'GET'
      hash.data = JSON.stringify(hash.data)

    jQuery.ajax(hash)

  _setCustomHeaders: (hash, user = App.currentUser) ->
    headers                   = hash || {}
    headers['X-Bearer-Token'] = user.bearerToken
    headers['X-Uid']          = user.uid
    headers['X-App-Name']     = user.appName

    headers

App.Store.registerAdapter('App.Patient', App.RestAdapter.extend
  bulkCommit: false
  namespace: 'api/v1'
  url: 'http://icis-patient-example.herokuapp.com'
)

App.Store.registerAdapter('App.User', DS.RESTAdapter.extend
  bulkCommit: false
  namespace: 'api/v1'
  url: 'http://icis-users-example.herokuapp.com'
)
