--
-- Game Loop
--

game = {}

local sti = require "libs.sti"

function game:init()
	gameFont = love.graphics.newImageFont("res/font.png",
		" abcdefghijklmnopqrstuvwxyz" ..
		"ABCDEFGHIJKLMNOPQRSTUVWXYZ0" ..
		"123456789.,!?-+/():;%&`'*#=[]\"")

	map = sti.new("maps/map2")
end

function game:enter()
	-- Always display help screen the first time the game is entered
	Gamestate.push(help)
end

local function center(line, text)
	love.graphics.printf(text, 0, 0 + (24 * line), love.graphics.getWidth(), "center")
end

function game:draw()
	love.graphics.setColor(255, 255, 255) -- white
	center(10, "This is the game screen")

	map:draw()
end

function game:update(dt)
end

function game:keypressed(key)
	if key == "h" then
		-- push the help screen
		Gamestate.push(help)
	end
end
