-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Use DisplayObjects and transitions to make an animated face
-- Starter code
--
-----------------------------------------------------------------------------------------

-- some consants for the main menu

local centerX = display.contentCenterX
local centerY = display.contentCenterY
local height = display.contentHeight
local width = display.contentWidth
local bottom = display.contentHeight - display.contentHeight
local background = display.newGroup()
local title = display.newGroup()
local mitem1 = display.newGroup()
local mitem2 = display.newGroup()
local mitem3 = display.newGroup()
local mitem4 = display.newGroup()


-- Set the background
local menubackground = display.newImage (background, "Battleship.jpg", centerX, centerY)

--Menu Title
local menuA = display.newRoundedRect(title, centerX, 0, width, 400,0 )
menuA:setFillColor(0)
local titleName = display.newText(title, "BATTLESHIP", centerX/1, centerY/7,"Arial", 100)
titleName:setFillColor(1,1,1)

-- Create menu items

--Menu item 1
local menuA = display.newRoundedRect(mitem1,centerX-150, height-360, 250, 150, 50)
menuA:setFillColor(0.5)
menuA.alpha = 0.7
local menuTextA = display.newText(mitem1, " Single \n Player", centerX-150, height-360,"Arial", 50)

--Menu item 2
local menuA = display.newRoundedRect(mitem2,centerX+150, height-360, 250, 150, 50 )
menuA:setFillColor(0.5)
menuA.alpha = 0.7

--Menu item 3
local menuA = display.newRoundedRect(mitem3,centerX-150, height-80, 200, 100, 12 )
menuA:setFillColor(0.5)
menuA.alpha = 0.7

--Menu item 4
local menuA = display.newRoundedRect(mitem4,centerX+150, height-80, 200, 100, 12 )
menuA:setFillColor(0.5)
menuA.alpha = 0.7
