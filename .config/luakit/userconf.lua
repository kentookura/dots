--- userconf.lua

local modes = require "modes"
local settings = require "settings"
local userscripts = require "userscripts"


modes.remap_binds("normal", {
--	 new  old  removes old binding (default false)
	{"O", "t", true}
	})

settings.window.search_engines = {
	default		= "https://searx.okura.at/search?q=%s", 
	y		= "https://invidio.us/search?q=%s"
}
