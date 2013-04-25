Session.setDefault 'room_id', null
Session.setDefault 'editing_room_id', null


Template.roomList.rooms = ->
	Rooms.find()
	

Template.roomList.events({
  'click .roomName': (evt, tmpl) ->
	  Session.set('editing_room_id', this._id)
	  Session.set('action','edit_room')
	  console.log("Editing room id " + this._id)
})

