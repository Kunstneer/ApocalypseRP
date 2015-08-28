CLASS.name = "Military Recruit"
CLASS.desc = "Inexperienced members of the military."
CLASS.faction = FACTION_MILITARY

function CLASS:onCanBe(client)
	return true
end

CLASS_MILITARY_RECRUIT = CLASS.index