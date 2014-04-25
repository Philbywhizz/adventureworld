--
-- Instructions
--
instructions = {}

function instructions:init()
	titleFont = love.graphics.newImageFont("res/font.png",
		" abcdefghijklmnopqrstuvwxyz" ..
		"ABCDEFGHIJKLMNOPQRSTUVWXYZ0" ..
		"123456789.,!?-+/():;%&`'*#=[]\"")
end

local function center(line, text)
	love.graphics.printf(text, 0, 0 + (24 * line), love.graphics.getWidth(), "center")
end

function instructions:draw()
	love.graphics.setColor(255, 255, 255) -- white
	love.graphics.setFont(titleFont)
	center(1, "One cold night while sipping your coffee over your computer you accidently")
	center(2, "opened a time portal to another world of the planet of 'X'. You must get")
	center(3, "back to your own world or you will surely die. Only one person known")
	center(4, "on 'X' has the portal back to your world,")
	center(5, "THE DARK KING OF 'X'.")

	center(7, "In order to survive & return to your world, you must defeat monsters,")
	center(8, "gain levels & finally defeat THE DARK KING OF 'X'")

	center(10, "Some monsters will be carrying money with them. This amount will vary with each")
	center(11, "monster, depending on how powerful the monster was.")

	center(13, "You can buy armour and weapons at towns at one of the two stores. Each store sells these")
	center(14, "items for a FAIRLY CHEAP price. All towns have the same items.")

	center(16, "You will progress in levels and your strength will increase as well.")
	center(17, "The main object of the game is to destroy 'THE DARK KING' and return to EARTH")

	center(20, "Press any key to continue")
end

function instructions:keypressed(key)
	if key then
		-- switch to the start of the game
	end
end
