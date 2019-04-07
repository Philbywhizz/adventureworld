--
-- Character Sheet
--

Charsheet = {}

function Charsheet:init()
	CharsheetFont = love.graphics.newImageFont("res/font.png",
		" abcdefghijklmnopqrstuvwxyz" ..
		"ABCDEFGHIJKLMNOPQRSTUVWXYZ0" ..
		"123456789.,!?-+/():;%&`'*#=[]\"")
end

local function center(line, text)
	love.graphics.printf(text, 0, 0 + (24 * line), love.graphics.getWidth(), "center")
end

function Charsheet:draw()
	love.graphics.setColor(255, 255, 255) -- white
	love.graphics.setFont(CharsheetFont)
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
	center(13, "Health = "..math.floor(player:getHealthPercent()).."%")
	center(14, "Food = "..math.floor(player:getFood()).." Days")
	center(15, "Days taken = "..math.floor(player:getDays()))
	center(20, "Press any key to continue")
end

function Charsheet:update(dt)
end

function Charsheet:keypressed(key)
	if key then
		Gamestate.pop()
	end
end