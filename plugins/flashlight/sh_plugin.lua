PLUGIN.name = "Flashlight"
PLUGIN.author = "Chessnut"
PLUGIN.desc = "Provides a flashlight item to regular flashlight usage."

function PLUGIN:PlayerSwitchFlashlight(client, state)
	if (!client:getChar()) then
		return false
	end

	if (state and !client:getChar():getInv():hasItem("flashlight")) then
		return false
	end

	return true
end