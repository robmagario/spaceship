Meteor.publish 'posts', ->
	Posts.find()

Meteor.publish 'attachments', ->
	Attachments.find()

Meteor.publish 'products', ->
	Products.find()

Meteor.publish 'addresses', ->
	Addresses.find()
