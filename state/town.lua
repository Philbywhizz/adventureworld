--
-- Town
--

Town = {}

function Town:init()
	townFont = love.graphics.newImageFont("res/font.png",
		" abcdefghijklmnopqrstuvwxyz" ..
		"ABCDEFGHIJKLMNOPQRSTUVWXYZ0" ..
		"123456789.,!?-+/():;%&`'*#=[]\"")
end

local function center(line, text)
	love.graphics.printf(text, 0, 0 + (24 * line), love.graphics.getWidth(), "center")
end

function Town:draw()
	love.graphics.setColor(255, 255, 255) -- white
	love.graphics.setFont(townFont)
	center(2, "**** TOWN ****")
	center(4, "You have "..player:getCashBalance().." draques with you.")
	center(5, "What would you like to do:")
	center(8, "[1]  BUY SOME ARMOUR")
	center(9, "[2]  BUY SOME WEAPONS")
	center(10, "[3]  BUY FOON 'N STUFF")
	center(11, "[4]  VISIT BANK")
	center(13, "[5]  SHOW CHARACTER")
	center(14, "[6]  HELP")
	center(16, "[0]  EXIT TOWN")
end

function Town:update(dt)
end

function Town:keypressed(key)
	if key == "5" then
		Gamestate.push(Charsheet)
	end
	if key == "6" then
		Gamestate.push(help)
	end
	if key == "0" then
		Gamestate.pop()
	end
end
