CLASS.name = "Military Elite"
CLASS.desc = "The officers of the old military."
CLASS.faction = FACTION_MILITARY_COMMAND

function CLASS:onCanBe(client)
	return true
end

CLASS_MILITARY_ELITE = CLASS.index