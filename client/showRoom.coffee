Template.showRoom.room = ->
	room = Rooms.findOne({ _id: Session.get("currentRoomId")})
	room
	
	

Template.showRoom.rendered = ->
	# our d3 code goes here
	this.node = this.find('#level')
	if (! self.drawRoom)
		 self.drawRoom = Meteor.autorun ->
			 room = Rooms.findOne({ _id: Session.get("currentRoomId")})

Template.showRoom.events = {
	'click button#saveRoom': ->
		name = $('#roomFields input#roomName').val().trim()
		description = $('#roomFields input#roomDescription').val().trim()
		width = $('#roomFields input#roomWidth').val().trim()
		height = $('#roomFields input#roomHeight').val().trim()
		Rooms.update(Session.get('currentRoomId'), {$set: {name: name, description: description, width: width, height: height}})
		console.log('Room' + name + ' saved successfully.')
}

