Meteor.Router.add({
	'/': 'index'
	'/rooms': 'rooms'
	'/rooms/:id': (id) ->
		Session.set('currentRoomId',id)
		'showRoom'
	})
