--- userconf.lua

local modes = require "modes"
local settings = require "settings"
local select = require "select"
local userscripts = require "userscripts"

select.label_maker = function ()
	local chars = charset ("asdfghjkl")
	return trim(sort(reverse(chars)))
end


modes.remap_binds("normal", {
--	 new  old  removes old binding (default false)
	{"O", "t", true}
	})

settings.window.search_engines = {
	default		= "https://duckduckgo.com/?q=%s", 
	y		= "https://invidio.us/search?q=%s",
	r		= "https://reddit.com/r/%s"
}
