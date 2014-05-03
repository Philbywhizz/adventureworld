--
-- Adventureworld
--

-- Setup
Gamestate = require "libs.hump.gamestate"
lovebird = require "libs.lovebird"
inspect = require "libs.inspect"
require "data"

require "state.instructions"
require "state.title"
require "state.help"
--
-- Globals
--
GameVersion = "0.0"

--
-- Love callback functions
--
function love.load()
	Gamestate.switch(title)
end

function love.draw()
	Gamestate.draw()
end

function love.update(dt)
	lovebird.update(dt)
	Gamestate.update(dt)
end

function love.keypressed(key)
	-- Global keys
	if key == "escape" then
		love.event.quit()
	end

	Gamestate.keypressed(key)
end

function love.quit()
	Gamestate.quit()
end
