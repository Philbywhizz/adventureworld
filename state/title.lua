--
-- Title Screen
--
require "state.instructions"

title = {}

function title:init()
	titleFont = love.graphics.newImageFont("res/font.png",
		" abcdefghijklmnopqrstuvwxyz" ..
		"ABCDEFGHIJKLMNOPQRSTUVWXYZ0" ..
		"123456789.,!?-+/():;%&`'*#=[]\"")
end

function title:draw()
	love.graphics.setColor(255, 255, 255) -- white
	love.graphics.setFont(titleFont)
	love.graphics.printf("*** WELCOME TO ADVENTUREWORLD ***", 0, 0, love.graphics.getWidth(), "center")
	love.graphics.printf("Written by Philip Howlett & John Zaitseff (c) 1990 Version 10", 0, 32, love.graphics.getWidth(), "center")
	love.graphics.printf("Brought into the 21st century by Phil Howlett", 0, 64, love.graphics.getWidth(), "center")
	love.graphics.printf("Do you want instructions (Y/N)?", 0, 384, love.graphics.getWidth(), "center")
end

function title:keypressed(key)
	if key == "y" then
		-- switch to the instructions screen
		Gamestate.switch(instructions)
	elseif key == "n" then
		-- switch to the start of the game
	end
end
