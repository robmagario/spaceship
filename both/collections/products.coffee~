@Products = new Meteor.Collection('products');

Schemas.Products = new SimpleSchema
	weight:
		type: Number
		label: "Weight in Grams"
		max: 20000

	description:
		type: String
		autoform:
			rows: 5
	createdAt: 
		type: Date
		autoValue: ->
			if this.isInsert
				new Date()

	picture:
		type: String
		autoform:
			afFieldInput:
				type: 'fileUpload'
				collection: 'Attachments'
		
	owner: 
		type: String
		regEx: SimpleSchema.RegEx.Id
		autoValue: ->
			if this.isInsert
				Meteor.userId()
		autoform:
			options: ->
				_.map Meteor.users.find().fetch(), (user)->
					label: user.emails[0].address
					value: user._id

Products.attachSchema(Schemas.Products)
