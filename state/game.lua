--
-- Game Loop
--

game = {}

local sti = require "libs.sti"

player = {}

function game:init()
	gameFont = love.graphics.newImageFont("res/font.png",
		" abcdefghijklmnopqrstuvwxyz" ..
		"ABCDEFGHIJKLMNOPQRSTUVWXYZ0" ..
		"123456789.,!?-+/():;%&`'*#=[]\"")

	map = sti.new("maps/adventureworld")
	currentMap = love.math.random(2, 9) -- map1 is special
	player.x = love.math.random(2, 63)
	player.y = love.math.random(2, 14)
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

	map:drawLayer(map.layers[currentMap])
end

function game:update(dt)
	map:update(dt)
end

function game:keypressed(key)
	if key == "h" then
		-- push the help screen
		Gamestate.push(help)
	end
end
