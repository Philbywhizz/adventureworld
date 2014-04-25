--
-- Adventureworld
--

--
-- Globals
--
GameVersion = "0.0"

--
-- Love callback functions
--
function love.keypressed(key)
	-- Global keys
	if key == "escape" then
		love.event.quit()
	end
end
