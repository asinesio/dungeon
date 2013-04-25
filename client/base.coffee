Session.setDefault 'action','room_list'

Template.base.displayRoomList = ->
	Session.get("action") is "room_list"
	
Template.base.displayRoomEditor = ->
	Session.get("action") is "edit_room"