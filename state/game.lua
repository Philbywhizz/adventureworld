--
-- Game Loop
--

require "player"

game = {}

local sti = require "libs.sti"

player = Player()

function game:init()
	gameFont = love.graphics.newImageFont("res/font.png",
		" abcdefghijklmnopqrstuvwxyz" ..
		"ABCDEFGHIJKLMNOPQRSTUVWXYZ0" ..
		"123456789.,!?-+/():;%&`'*#=[]\"")

	map = sti.new("maps/adventureworld")
	currentMap = love.math.random(2, 9) -- map1 is special

	-- Set the player to a random location
	local x, y
	repeat
		x = love.math.random(2, 63)
		y = love.math.random(2, 14)
	until safeStartingTile(x, y) -- checks for a safe tile
	player:setXY(x, y)
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
	if getTile(x,y) == "BRICKS" or getTile(x,y) == "MOUNTAINS" then
		return false
	else
		return true
	end
end

function safeStartingTile(x, y)
	-- returns true if the current tile is safe
	if getTile(x,y) == "BRICKS" or getTile(x,y) == "MOUNTAINS" or getTile(x,y) == "GATE" or getTile(x,y) == "EXIT" then
		return false
	else
		return true
	end
end

function game:draw()
	love.graphics.setColor(255, 255, 255) -- white
	map:drawLayer(map.layers[currentMap])
	player:draw()
end

function newMap()
	-- First switch the player to the other side of the screen
	local direction = player:flip()
	print(direction)
	nextMap = currentMap
	-- This is messy
	if currentMap == 2 then
	elseif currentMap == 3 then
	elseif currentMap == 4 then
	elseif currentMap == 5 then
	elseif currentMap == 6 then
	elseif currentMap == 7 then
	elseif currentMap == 8 then
	elseif currentMap == 9 then
	end

	return nextMap
end

function game:update(dt)
	map:update(dt)
	if getTile(player:getXY()) == "EXIT" then
		currentMap = newMap()
	end
	player:update(dt)
end

function game:keypressed(key)
	if key == "a" or key == "up" then
		-- up
		if safeTile(player:getX(), player:getY() - 1) then
			player:setXY(player:getX(), player:getY() - 1)
		end
	end
	if key == "z" or key == "down" then
		-- down
		if safeTile(player:getX(), player:getY() + 1) then
			player:setXY(player:getX(), player:getY() + 1)
		end
	end
	if key == "," or key == "left" then
		-- left
		if safeTile(player:getX() - 1, player:getY()) then
			player:setXY(player:getX() - 1, player:getY())
		end
	end
	if key == "." or key == "right" then
		if safeTile(player:getX() + 1, player:getY()) then
			player:setXY(player:getX() +  1, player:getY())
		end
	end

	if key == "h" then
		-- Help screen
		Gamestate.push(help)
	end

	if key == "s" then
		-- Show character record screen
	end
	if key == "1" then
		-- debug
		print("Player:")
		print(inspect(player))
		print(getTile(player:getXY()))
	end
end
