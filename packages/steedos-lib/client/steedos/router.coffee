checkUserSigned = (context, redirect) ->
	if !Meteor.userId()
		Steedos.redirectToSignIn()

FlowRouter.notFound = 
	action: ()->
		if !Meteor.userId()
			BlazeLayout.render 'loginLayout',
				main: "not_found"
		else
			BlazeLayout.render 'notFoundLayout',
				main: "not_found"

FlowRouter.triggers.enter [
	()-> Session.set("router-path", FlowRouter.current().path)
	()-> 
		Tracker.autorun ->
			if Session.get "is_tap_loaded"
				appName = Steedos.getAppName()
				if appName
					Steedos.setAppTitle t(appName)
				else
					Steedos.setAppTitle "Steedos"
	()-> 
		# 变更路由时记录url作为下次登录的url
		if Meteor.userId()
			lastUrl = FlowRouter.current().path
			if lastUrl != '/'
				unless /^\/?steedos\b/.test(lastUrl)
					localStorage.setItem('Steedos.lastURL:' + Meteor.userId(), lastUrl)
]

FlowRouter.route '/', 
	action: (params, queryParams)->
		if !Meteor.userId()
			Steedos.redirectToSignIn()
		else
			# # 登录最近关闭的URL
			# lastUrl = localStorage.getItem('Steedos.lastURL:' + Meteor.userId())
			# # 这时不能用lastUrl.startsWith，因为那样无法判断后面是否加了其他字符
			# if (!Steedos.isMobile() && lastUrl)
			# 	if /^\/?workflow\b/.test(lastUrl)
			# 		FlowRouter.go "/workflow"
			# 	else if /^\/?cms\b/.test(lastUrl)
			# 		FlowRouter.go "/cms"
			# 	else if /^\/?emailjs\b/.test(lastUrl)
			# 		FlowRouter.go "/emailjs"
			# 	else if /^\/?contacts\b/.test(lastUrl)
			# 		FlowRouter.go "/contacts"
			# 	else if /^\/?portal\b/.test(lastUrl)
			# 		FlowRouter.go "/portal"
			# 	else 
			# 		FlowRouter.go "/admin"
			# else
			if (Steedos.isMobile())
				FlowRouter.go "/workflow"
			else
				Tracker.autorun (c)->
					firstApp = Steedos.getSpaceFirstApp()
					if !firstApp
						# 这里等待db.apps加载完成后，找到并进入第一个spaceApps的路由，在apps加载完成前显示loading界面
						$("body").addClass('loading')
					else
						c.stop()
						currentPath = FlowRouter.current().path
						if currentPath == "/"
							Steedos.openApp firstApp._id


# FlowRouter.route '/steedos', 
#   action: (params, queryParams)->
#       if !Meteor.userId()
#           Steedos.redirectToSignIn()
#           return true
#       else
#           FlowRouter.go "/steedos/springboard";


FlowRouter.route '/admin/profile', 
	action: (params, queryParams)->
		FlowRouter.go "/admin/profile/profile"

FlowRouter.route '/admin/api/:apiName', 
	triggersEnter: [ checkUserSigned ],
	action: (params, queryParams)->
		if !Meteor.userId()
			Steedos.redirectToSignIn()
			return true

		BlazeLayout.render 'adminLayout',
			main: "admin_api"

FlowRouter.route '/admin/profile/:profileName', 
	triggersEnter: [ checkUserSigned ],
	action: (params, queryParams)->
		if Meteor.userId()
			BlazeLayout.render 'adminLayout',
				main: "profile"

		Tracker.afterFlush ->
			profileName = params?.profileName
			if profileName
				$(".admin-content a[href=\"##{profileName}\"]").tab('show')


FlowRouter.route '/admin/spaces', 
	triggersEnter: [ checkUserSigned ],
	action: (params, queryParams)->
		if !Meteor.userId()
			Steedos.redirectToSignIn()
			return true

		BlazeLayout.render 'masterLayout',
			main: "space_select"


FlowRouter.route '/admin/space/info', 
	triggersEnter: [ checkUserSigned ],
	action: (params, queryParams)->
		if !Meteor.userId()
			Steedos.redirectToSignIn()
			return true

		BlazeLayout.render 'adminLayout',
			main: "space_info"

FlowRouter.route '/admin/customize_apps',
	triggersEnter: [ checkUserSigned ],
	action: (params, queryParams)->
		spaceId = Steedos.getSpaceId()
		if spaceId
			FlowRouter.go("/admin/view/apps")

FlowRouter.route '/designer', 
	triggersEnter: [ checkUserSigned ],
	action: (params, queryParams)->
		if !Meteor.userId()
			Steedos.redirectToSignIn()
			return true
		
		url = Steedos.absoluteUrl("applications/designer/current/" + Steedos.getLocale() + "/"+ "?spaceId=" + Steedos.getSpaceId());
		
		Steedos.openWindow(url);
		
		FlowRouter.go "/designer/opened"

FlowRouter.route '/designer/opened', 
	triggersEnter: [ checkUserSigned ],
	action: (params, queryParams)->
		if !Meteor.userId()
			Steedos.redirectToSignIn()
			return true

FlowRouter.route '/steedos/sso', 
	action: (params, queryParams)->
		returnurl = queryParams.returnurl

		Steedos.loginWithCookie ()->
			Meteor._debug("cookie login success");
			FlowRouter.go(returnurl);

FlowRouter.route '/admin/about',
	action: (params, queryParams)->
		BlazeLayout.render 'adminLayout',
			main: "steedosAbout"


