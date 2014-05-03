--
-- Player object
--

Player = Class{}

function Player:init()
end

function Player:setXY(x, y)
	self.x = x
	self.y = y
end

function Player:getXY()
	return self.x, self.y
end

function Player:draw()
end

function Player:update(dt)
end
