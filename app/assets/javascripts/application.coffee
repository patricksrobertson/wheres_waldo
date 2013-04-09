#= require modernizr
#= require jquery
#= require handlebars
#= require ember
#= require ember-data
#= require bootstrap
#= require_self
#= require store
#= require routes
#= require_tree ./controllers
#= require_tree ./models
#= require_tree ./templates
#= require_tree ./views

window.App = Ember.Application.create()

App.currentUser =
  bearerToken: 'abcdefg'
  uid:         '1234567'
  appName:     'wheres_waldo'
