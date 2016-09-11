local composer = require ("composer")
local scene = composer.newScene()

local widget = require("widget")

local grid = {}

grid.players = {
	red = { score = 0},
	yellow = { score = 0}
	}

grid.currentPlayer = "red"

--The ocean

grid.LINES = 15

grid.cells = {}

grid.listeners = {}

function grid:newGame()
		self.players.red.score =0
		self.players.yellow.score =0
		
		self.currentPlayer = "red"
		
		self.cells ={}
		for i = 1, self.LINES-1 do
			self.cells[i] = {}
			for j = 1, self.LINES-1 do
				self.cells[i][j] = { owner = nil }
			end
			end
			end

return grid