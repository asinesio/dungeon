
Template.rooms.rooms = ->
	Rooms.find({}, {sort: { name: 1}})
	

#Template.roomList.events({
#  'click .roomName': (evt, tmpl) ->
#	  Session.set('editing_room_id', this._id)
#	  Session.set('action','edit_room')
#	  console.log("Editing room id " + this._id)
#})

