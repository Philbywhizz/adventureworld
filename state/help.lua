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

local function drawLegend(quad, text, x, y)
	local tilesetImage = map.tilesets[1].image
	love.graphics.draw(tilesetImage, quad, x, y)
	love.graphics.print("= "..text, x + 32, y + 8)
end

function help:draw()
	love.graphics.setColor(255, 255, 255) -- white
	love.graphics.setFont(helpFont)
	center(1, "HELP SCREEN")
	center(2, "Movement Controls:")
	love.graphics.print("'A' - Up", 350, 72)
	love.graphics.print("'Z' - Down", 350, 100)

	love.graphics.print("',' - Left", 550, 72)
	love.graphics.print("'.' - Right", 550, 100)
	center(5, "(you can also use the arrow keys)")
	center(7, "MAP LEGEND:")

	-- Draw the legend (mix graphics/text)
	drawLegend(map.tiles[1].quad, "Bricks", 350, 200)
	drawLegend(map.tiles[2].quad, "Woods", 350, 235)
	drawLegend(map.tiles[3].quad, "Mountains", 350, 270)
	drawLegend(map.tiles[4].quad, "Path", 350, 305)
	drawLegend(map.tiles[5].quad, "Swamp", 350, 340)

	drawLegend(map.tiles[6].quad, "Town", 550, 200)
	drawLegend(map.tiles[9].quad, "Gate", 550, 235)
	drawLegend(map.tiles[11].quad, "Portal", 550, 270)
	drawLegend(map.tiles[12].quad, "Forest", 550, 305)
	drawLegend(map.tiles[14].quad, "Lamp", 550, 340)

	center(16, "Other Controls:")
	center(17, "'S' - Show character sheet")
	center(18, "'H' or '?' - This Help screen")
	center(20, "Press any key to continue")

end

function help:keypressed(key)
	if key then
		Gamestate.pop()
	end
end

