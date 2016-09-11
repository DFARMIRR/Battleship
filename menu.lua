local composer = require ("composer")
local scene = composer.newScene()

local widget = require("widget")

local function handlePlayButtonEvent (event)
	if ("ended" == event.phase ) then
		composer.removeScene("maingame",false)
		composer.gotoScene("maingame", {effect = "crossFade",time = 333})
		end
end

local function handleHelpButtonEvent (event)
	if ("ended" == event.phase) then
	composer.gotoScene ("help", { effect = "crossFade",time = 333})
	end
end

local function handleSettingsButtonEvent( event )

    if ( "ended" == event.phase ) then
        composer.gotoScene("gamesettings", { effect = "crossFade", time = 333 })
    end
end

--
-- Start the composer event handlers
--

function scene:create(event)
	local sceneGroup = self.view
			
	local background = display.newImage ("battleship.jpg",0,0,570,360)
	background.x = display.contentCenterX
	background.y = display.contentCenterY
	sceneGroup:insert( background )
	
	local gameTitle
	
	local playSinglePlayer = widget.newButton({
		id="button1",
		label = "Play Single Player",
		width = 400,
		height = 52,
		onEvent = hhandlePlayButtonEvent
		})
		playSinglePlayer.x = display.contentCenterX
		playSinglePlayer.y = display.contentCenterY - 90
		sceneGroup:insert(playSinglePlayer)
		
	end

function scene:show( event )
    local sceneGroup = self.view

        if event.phase == "did" then
		
        composer.removeScene( "game" ) 
    end
end

function scene:hide( event )
    local sceneGroup = self.view
    
    if event.phase == "will" then
    end

end

function scene:destroy( event )
    local sceneGroup = self.view
    
end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
return scene