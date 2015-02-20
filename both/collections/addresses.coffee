@Addresses = new Meteor.Collection('addresses');

Schemas.Addresses = new SimpleSchema
  address: type: Object
  'address.name': type: String
  'address.street': type: String
  'address.street2':
    type: String
    optional: true
  'address.city': type: String
  'address.state': type: String
  'address.country':
    type: String
    allowedValues: [
      'Angola'
      'Argentina'
      'Brazil'
      'China (Mainland)'
      'Japan'
      'Macau'
      'Mozambique'
      'Portugal'
      'Taiwan'
      'Timor Leste'
      'United States'
    ]
    autoform: afFieldInput: firstOption: '(Select a Country)'
  'address.postalCode':
    type: String
    label: 'Postal Code'
  'address.phone':
    type: String
    label: 'Phone'

  createdAt:
    type: Date
    autoValue: ->
      if this.isInsert
        new Date()

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

Addresses.attachSchema(Schemas.Addresses)
