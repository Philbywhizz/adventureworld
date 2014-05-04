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
	self.name = "Nobody"
	self.level = 1
	self.maxHP = math.floor(self.level) * 100
	self.hp = self.maxHP
	self.score = 0
	self.cash = 0
	self.bank = 0
	self.armour = 1
	self.weapon = 1
	self.food = 20
	self.days = 0
	self.king = false
end

function Player:getName()
	return self.name
end

function Player:getLevel()
	if self.level > #titles then
		return #titles
	else
		return self.level
	end
end

function Player:isKing()
	return self.king
end

function Player:makeKing()
	self.king = true
end

function Player:getScore()
	return self.score
end

function Player:getCashBalance()
	return self.cash
end

function Player:getBankBalance()
	return self.bank
end

function Player:getArmour()
	return self.armour
end

function Player:getWeapon()
	return self.weapon
end

function Player:getHealthPercent()
	return (self.hp / self.maxHP) * 100
end

function Player:getFood()
	return self.food
end

function Player:eat(noms)
	self.food = self.food - noms
end

function Player:getDays()
	return self.days
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

function Player:flip()
	if self.x == 1 then
		self.x = 63
		return "WEST"
	end
	if self.x == 64 then
		self.x = 2
		return "EAST"
	end
	if self.y == 1 then
		self.y = 14
		return "NORTH"
	end
	if self.y == 15 then
		self.y = 2
		return "SOUTH"
	end
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

