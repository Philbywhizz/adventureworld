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
	center(4, "**** TOWN ****")
	center(20, "Press any key to continue")
end

function Town:update(dt)
end

function Town:keypressed(key)
	if key then
		Gamestate.pop()
	end
end
