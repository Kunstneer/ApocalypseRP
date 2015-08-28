CLASS.name = "Military Unit"
CLASS.desc = "Normal units from the old military."
CLASS.faction = FACTION_MILITARY

function CLASS:onCanBe(client)
	return client:getChar():hasFlags("u")
end

CLASS_CP_UNIT = CLASS.index