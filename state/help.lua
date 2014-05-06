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
	center(3, "Movement Controls:")
	center(5, "'A' - Up")
	center(6, "'Z' - Down")
	center(7, "',' - Left")
	center(8, "'.' - Right")
	center(9, "(you can also use the arrow keys)")
	center(11, "Other Controls:")
	center(13, "'S' - Show character sheet")
	center(14, "'H' or '?' - This Help screen")
	center(20, "Press any key to continue")
end

function help:keypressed(key)
	if key then
		Gamestate.pop()
	end
end

