CLASS.name = "Military Recruit"
CLASS.desc = "Inexperienced members of the military."
CLASS.faction = FACTION_MILITARY

function CLASS:onCanBe(client)
	if client:getChar():hasFlags("u")
		return false
	else
		return true
	end if
end

CLASS_MILITARY_RECRUIT = CLASS.index