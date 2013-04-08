App.Store = DS.Store.extend
  revision: 11
  adapter: DS.RESTAdapter.create
    bulkCommit: false
    namespace: 'api/v1'
    url: 'http://icis-patient-example.herokuapp.com'
