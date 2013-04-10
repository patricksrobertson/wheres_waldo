App.Appointment = DS.Model.extend
  reason:      DS.attr('string')
  at:          DS.attr('date')
  patient_ids: DS.attr('array')
  user_ids:    DS.attr('array')
