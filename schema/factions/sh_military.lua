FACTION.name = "Military"
FACTION.desc = "Units from the old military."
FACTION.color = Color(25, 30, 180)
FACTION.isDefault = false
FACTION.models = {
	"models/police.mdl"
}
FACTION.weapons = {"nut_stunstick"}
FACTION.pay = 30
FACTION.isGloballyRecognized = true

--[[
function FACTION:onGetDefaultName(client)
	if (SCHEMA.digitsLen >= 1) then
		local digits = math.random(tonumber("1"..string.rep("0", SCHEMA.digitsLen-1)), tonumber(string.rep("9", SCHEMA.digitsLen)))
		return SCHEMA.cpPrefix..table.GetFirstValue(SCHEMA.rctRanks).."."..digits, true
	else
		return SCHEMA.cpPrefix..table.GetFirstValue(SCHEMA.rctRanks), true
	end
end
--]]

FACTION_MILITARY = FACTION.index
