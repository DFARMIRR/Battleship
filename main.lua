local composer = require("composer")
local widget = require("widget")

display.setStatusBar( display.HiddenStatusBar )

local function systemEvents(event)
 if event.type == "applicationStart" then
   composer.gotoScene( "menu", { time = 250, effect = "fade" } )
   end
 return true
end

Runtime:addEventListener("system", systemEvents)