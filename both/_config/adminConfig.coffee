AdminConfig =
	name: Config.name
	adminEmails: ['dranithix@gmail.com', 'robmagario@gmail.com']
	collections: 
		Posts: {
			color: 'red'
			icon: 'pencil'
			auxCollections: ['Attachments']
			tableColumns: [
              {label: 'Title',name:'title'}
              {label:'User',name:'owner',collection:'Users'}
            ]
		}
		Comments: {
			color: 'green'
			icon: 'comments'
			auxCollections: ['Posts']
			tableColumns: [
              {label: 'Content';name:'content'}
              {label:'Post';name:'doc',collection: 'Posts',collection_property:'title'}
              {label:'User',name:'owner',collection:'Users'}
            ]
		}
		Products: {
			color: 'blue'
			icon: 'pencil'
			auxCollections: ['Products']
			tableColumns: [
              {label: 'Weight in Grams';name:'weight'}
              {label:'Description';name:'description'}
              {label:'User',name:'owner',collection:'Users'}
            ]
		}
	dashboard:
		homeUrl: '/dashboard'
		widgets: [
          {
            template: 'adminCollectionWidget'
            data:
              collection: 'Products'
              class: 'col-lg-3 col-xs-6'
          }
          {
            template: 'adminUserWidget'
            data:
              class: 'col-lg-3 col-xs-6'
          }
        ]
	autoForm: 
	        omitFields: ['createdAt', 'updatedAt']

if Meteor.isClient
	window.AdminConfig = AdminConfig
else if Meteor.isServer
	global.AdminConfig = AdminConfig
