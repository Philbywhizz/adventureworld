--
-- Player object
--

Player = Class{}

function Player:init()

	self.width = 16
	self.height = 32
	self.flash = 0
	self.img = {
		current = 1,
		toggle = function() -- toggle between flashing player graphic
			if self.img.current == 1 then
				self.img.current = 2
			else
				self.img.current = 1
			end
		end,
		love.graphics.newImage("res/person.png"),
		love.graphics.newImage("res/iperson.png")
	}

end

function Player:setXY(x, y)
	self.x = x
	self.y = y
end

function Player:getXY()
	return self.x, self.y
end

function Player:getX()
	return self.x
end

function Player:getY()
	return self.y
end

function Player:update(dt)
	-- flash the player if required
	self.flash = self.flash + dt
	if self.flash > .25 then
		self.flash = 0
		self.img:toggle()
	end
end

function Player:draw()
	love.graphics.draw(self.img[self.img.current], (self.x - 1) * self.width, (self.y - 1) * self.height)
end

