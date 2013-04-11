App.Appointment = DS.Model.extend
  reason:     DS.attr('string')
  at:         DS.attr('date')
  patientIds: DS.attr('array')
  userIds:    DS.attr('array')

  users: (->
    users = []
    @get('userIds').forEach (id) ->
      users.push App.User.find(id)

    users
  ).property('userIds')

  patients: (->
    patients = []
    @get('patientIds').forEach (id) ->
      patients.push App.Patient.find(id)

    patients
  ).property('patientIds')
