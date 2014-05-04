--
-- Character Sheet
--

charsheet = {}

function charsheet:init()
	charsheetFont = love.graphics.newImageFont("res/font.png",
		" abcdefghijklmnopqrstuvwxyz" ..
		"ABCDEFGHIJKLMNOPQRSTUVWXYZ0" ..
		"123456789.,!?-+/():;%&`'*#=[]\"")
end

local function center(line, text)
	love.graphics.printf(text, 0, 0 + (24 * line), love.graphics.getWidth(), "center")
end

function charsheet:draw()
	love.graphics.setColor(255, 255, 255) -- white
	love.graphics.setFont(charsheetFont)
	center(1, "**** Character Record ****")
	center(3, "Name = "..player:getName())
	center(4, "Level = "..player:getLevel())
	center(5, "Title = "..titles[player:getLevel()])
	center(6, "Score = "..player:getScore())
	center(7, "Money carried = "..player:getCashBalance().." draques")
	center(8, "Money in bank = "..player:getBankBalance().." draques")
	center(9, "Armour = "..armour[player:getArmour()].name)
	center(10, "Weapon = "..weapons[player:getWeapon()].name)
	center(11, "Weapon strength = "..weapons[player:getWeapon()].strength)
	center(12, "Armour class = "..armour[player:getArmour()].ac - 10)
	center(13, "Health = "..player:getHealthPercent().."%")
	center(14, "Food = "..player:getFood().." Days")
	center(15, "Days taken = "..player:getDays())
	center(20, "Press any key to continue")
end

function charsheet:update(dt)
end

function charsheet:keypressed(key)
	if key then
		Gamestate.pop()
	end
end
