###
# Kick off the global namespace for Steedos.
# @namespace Steedos
###

db = {}
Steedos = 
	settings: {}
	db: db
	ReplaceOnClickBraceParmsToEvalResult:(content)->
	    if content
	        # 匹配所有{{}}对里面的内容（内容里面应该是写js脚本，不支持有回车换行的多行脚本）
	        # 一般来说，{{}}对里面的脚本会是Portal.GetAuthByName("auth_name").login_name，会调用全局的Portal.GetAuthByName函数根据auth_name返回apps_auth_users记录
	        reg = /{{(.|\n)+?}}/g
	        content = content.replace(reg,(n)->
	            try
	                # 这里用函数闭包的目的只是为了避免变量污染
	                n = n.replace('{{', '').replace('}}', '')
	                return eval("(function(){return #{n}})()")
	            catch e
	                # just console the error when catch error
	                console.error "在执行Steedos.ReplaceOnClickBraceParmsToEvalResult编译OnClick脚本时出错:"
	                console.error "#{e.message}\r\n#{e.stack}"
	                return n
	        )
	        return content
	    else
	        return ""

@TabularTables = {};

if Meteor.isClient

	Steedos.isMobile = ()->
		return $(window).width() < 767

	Steedos.openWindow = (url, target)->
		target = "_blank"
		options = 'EnableViewPortScale=yes,toolbarposition=top,transitionstyle=fliphorizontal,closebuttoncaption=  x  '
		window.open(url, target, options);


# This will add underscore.string methods to Underscore.js
# except for include, contains, reverse and join that are 
# dropped because they collide with the functions already 
# defined by Underscore.js.

mixin = (obj) ->
	_.each _.functions(obj), (name) ->
		if not _[name] and not _.prototype[name]?
			func = _[name] = obj[name]
			_.prototype[name] = ->
				args = [this._wrapped]
				push.apply(args, arguments)
				return result.call(this, func.apply(_, args))

#mixin(_s.exports())