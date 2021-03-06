FACTION.name = "Military Command"
FACTION.desc = "Commanding units from the old military."
FACTION.color = Color(181, 94, 94)
FACTION.isDefault = false
FACTION.models = {
	"models/combine_soldier.mdl"
}
FACTION.weapons = {"nut_stunstick"}
FACTION.pay = 60
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

FACTION_MILITARYCOMMAND = FACTION.index
