Template.showRoom.room = ->
	Rooms.findOne({ _id: Session.get("currentRoomId")})