--
-- Help
--

help = {}

function help:init()
	helpFont = love.graphics.newImageFont("res/font.png",
		" abcdefghijklmnopqrstuvwxyz" ..
		"ABCDEFGHIJKLMNOPQRSTUVWXYZ0" ..
		"123456789.,!?-+/():;%&`'*#=[]\"")
end

local function center(line, text)
	love.graphics.printf(text, 0, 0 + (24 * line), love.graphics.getWidth(), "center")
end

function help:draw()
	love.graphics.setColor(255, 255, 255) -- white
	love.graphics.setFont(helpFont)
	center(1, "HELP SCREEN")
	center(10, "TODO")
	center(20, "Press any key to continue")
end

function help:keypressed(key)
	if key then
		Gamestate.pop()
	end
end
