--
-- Gate state
--

Gate = {}

function Gate:init()
	gateFont = love.graphics.newImageFont("res/font.png",
		" abcdefghijklmnopqrstuvwxyz" ..
		"ABCDEFGHIJKLMNOPQRSTUVWXYZ0" ..
		"123456789.,!?-+/():;%&`'*#=[]\"")
end

local function center(line, text)
	love.graphics.printf(text, 0, 0 + (24 * line), love.graphics.getWidth(), "center")
end

function Gate:draw()
	love.graphics.setColor(255, 255, 255) -- white
	love.graphics.setFont(gateFont)
	center(5, "As you approach the castle, you feel")
	center(7, "power lurking behind it. On the gate is a sign")
	center(9, "tattered with age. it reads:")
	center(14, "WHOSOVER DEFEATS THE DARK KING SHALL THEY ENTER!")
	center(20, "Press any key to continue")
end

function Gate:update(dt)
end

function Gate:keypressed(key)
	if key then
		Gamestate.pop()
		print("KEY")
	end
end

