@Config =
	name: 'Forwarding HK PostBox'
	title: 'Forward anything from HK to your home now.'
	subtitle: 'The easiest way to get things delivered from HK'
	logo: ->
		'<b>' + @name + '</b>'
	footer: ->
		@name + ' - Copyright ' + new Date().getFullYear()
	emails:
		from: 'noreply@' + Meteor.absoluteUrl()
	blog: 'http://meteorfactory.io'
	about: 'http://meteorfactory.io'
	username: false
	homeRoute: '/'
	dashboardRoute: '/dashboard'
	socialMedia:
		facebook:
			url: 'http://facebook.com/benjaminpeterjones'
			icon: 'facebook'
		twitter:
			url: 'http://twitter.com/BenPeterJones'
			icon: 'twitter'
		github:
			url: 'http://github.com/yogiben'
			icon: 'github'
		info:
			url: 'http://meteorfactory.io'
			icon: 'link'
	publicRoutes: ['home']