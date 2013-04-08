App.Store = DS.Store.extend
  revision: 11
  adapter: DS.RESTAdapter.create
    bulkCommit: false

App.Store.registerAdapter('App.Patient', DS.RESTAdapter.extend
  bulkCommit: false
  namespace: 'api/v1'
  url: 'http://icis-patient-example.herokuapp.com'
)

App.Store.registerAdapter('App.User', DS.RESTAdapter.extend
  bulkCommit: false
  namespace: 'api/v1'
  url: 'http://icis-users-example.herokuapp.com'
)
