--
-- Game Loop
--

game = {}

function game:init()
	gameFont = love.graphics.newImageFont("res/font.png",
		" abcdefghijklmnopqrstuvwxyz" ..
		"ABCDEFGHIJKLMNOPQRSTUVWXYZ0" ..
		"123456789.,!?-+/():;%&`'*#=[]\"")
end

function game:enter()
	Gamestate.push(help)
end

local function center(line, text)
	love.graphics.printf(text, 0, 0 + (24 * line), love.graphics.getWidth(), "center")
end

function game:draw()
	love.graphics.setColor(255, 255, 255) -- white
	center(10, "This is the game screen")
	love.graphics.setFont(titleFont)
end

function game:update(dt)
end

function game:keypressed(key)
	if key == "h" then
		-- push the help screen
		Gamestate.push(help)
	end
end
