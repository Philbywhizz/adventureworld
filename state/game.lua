--
-- Game Loop
--

require "player"

game = {}

local sti = require "libs.sti"
local foodTimer = love.timer.getTime()
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
	love.graphics.setFont(gameFont)
	map:drawLayer(map.layers[currentMap])
	player:draw()
	love.graphics.print("FOOD = "..math.floor(player:getFood()).." Days", 0, love.graphics.getHeight() - 24)
end

function newMap()
	-- First switch the player to the other side of the screen
	local direction = player:flip()
	local nextMap = currentMap
	-- This is messy, but it works. Should look at putting this into a table.
	if currentMap == 2 then
		if direction == "NORTH" then nextMap = 8 end
		if direction == "SOUTH" then nextMap = 4 end
		if direction == "EAST" then nextMap = 9 end
		if direction == "WEST" then nextMap = 7 end
	elseif currentMap == 3 then
		if direction == "NORTH" then nextMap = 6 end
		if direction == "SOUTH" then nextMap = 7 end
		if direction == "EAST" then nextMap = 6 end
		if direction == "WEST" then nextMap = 5 end
	elseif currentMap == 4 then
		if direction == "NORTH" then nextMap = 2 end
		if direction == "SOUTH" then nextMap = 5 end
		if direction == "EAST" then nextMap = 5 end
		if direction == "WEST" then nextMap = 6 end
	elseif currentMap == 5 then
		if direction == "NORTH" then nextMap = 9 end
		if direction == "SOUTH" then nextMap = 8 end
		if direction == "EAST" then nextMap = 3 end
		if direction == "WEST" then nextMap = 4 end
	elseif currentMap == 6 then
		if direction == "NORTH" then nextMap = 7 end
		if direction == "SOUTH" then nextMap = 3 end
		if direction == "EAST" then nextMap = 4 end
		if direction == "WEST" then nextMap = 3 end
	elseif currentMap == 7 then
		if direction == "NORTH" then nextMap = 3 end
		if direction == "SOUTH" then nextMap = 6 end
		if direction == "EAST" then nextMap = 2 end
		if direction == "WEST" then nextMap = 9 end
	elseif currentMap == 8 then
		if direction == "NORTH" then nextMap = 5 end
		if direction == "SOUTH" then nextMap = 2 end
		if direction == "EAST" then nextMap = 8 end
		if direction == "WEST" then nextMap = 8 end
	elseif currentMap == 9 then
		if direction == "NORTH" then nextMap = 1 end
		if direction == "SOUTH" then nextMap = 5 end
		if direction == "EAST" then nextMap = 7 end
		if direction == "WEST" then nextMap = 2 end
	end

	return nextMap
end

function game:update(dt)
	map:update(dt)
	local myTile = getTile(player:getXY())
	if myTile == "EXIT" then
		currentMap = newMap()
	end
	-- Town test
	if myTile == "TOWN" then
		Gamestate.push(Town)
		player:setXY(player:getX(), player:getY() + 1) -- move the player down 1
	end
	-- Gate test, only pass if king is defeated
	if myTile == "GATE" and not player:isKing() then
		Gamestate.push(Gate)
		player:setXY(player:getX(), player:getY() + 1) -- move the player down 1
	end
	-- Calculate food every .5 seconds
	if love.timer.getTime() - foodTimer > .5 then
		if myTile == "WOODS" then player:eat(0.04) end
		if myTile == "PATH" then player:eat(0.02) end
		if myTile == "FOREST" then player:eat(0.1) end
		if myTile == "HILLS" then player:eat(0.25) end
		if myTile == "SWAMP" then player:eat(0.08) end
		if myTile == "TOWN" then player:eat(1) end
		foodTimer = love.timer.getTime()
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
		Gamestate.push(charsheet)
	end
	if key == "1" then
		-- debug
		print("DEBUG:")
		print("- Current Tile:"..getTile(player:getXY()))
		print("- Current Map #"..currentMap)
	end
	if key == "2" then
		-- make the player the king
		player:makeKing()
		print("DEBUG: Kingmaker!")
	end
	if key == "3" then
		-- Force a town state
		Gamestate.push(Town)
	end
end
