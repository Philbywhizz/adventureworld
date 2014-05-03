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

	-- Set the player to a random location
	repeat
		player.x = love.math.random(2, 63)
		player.y = love.math.random(2, 14)
	until safeTile(player.x, player.y) -- checks for a safe tile

end

function game:enter()
	-- Always display help screen the first time the game is entered
	Gamestate.push(help)
end

local function center(line, text)
	love.graphics.printf(text, 0, 0 + (24 * line), love.graphics.getWidth(), "center")
end

function getTile(x, y)
	-- returns the tile type based on the x,y coordinate
	return tiles[map.layers[currentMap].data[y][x].gid]
end

function safeTile(x, y)
	-- returns true if the current tile is safe
	if getTile(x,y) == "BRICKS" or getTile(x,y) == "MOUNTAINS" or getTile(x,y) == "GATE" or getTile(x,y) == "EXIT" then
		return false
	else
		return true
	end
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
	if key == "a" or key == "up" then
		-- up
	end
	if key == "z" or key == "down" then
		-- down
	end
	if key == "," or key == "left" then
		-- left
	end
	if key == "." or key == "right" then
	end

	if key == "h" then
		-- Help screen
		Gamestate.push(help)
	end

	if key == "1" then
		-- debug
		print("Player:")
		print(inspect(player))
		print(getTile(player.x, player.y))
	end
end
