App.AppointmentsNewController = Ember.ObjectController.extend
  save: ->
    patients = jQuery('#patientIds').val()
    @content.set('patientIds', patients)

    users = jQuery('#userIds').val()
    @content.set('userIds', users)

    if @content.get('at')
      date = new Date(@content.get('at'))
      @content.set('at', date)

    @store.commit()
    @content.addObserver 'id', @, 'afterSave'

  cancel: ->
    @content.deleteRecord()
    @transitionToRoute('appointments.index')

  afterSave: ->
    @content.removeObserver 'id', @, 'afterSave'
    @transitionToRoute('appointments.index')
