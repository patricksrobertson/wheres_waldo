App.CurrentUser = DS.Model.extend
  bearerToken: DS.attr('string')
  appName:     DS.attr('string')
