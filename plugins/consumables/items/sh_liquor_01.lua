ITEM.name = "Liquor 01"
ITEM.desc = "An old glass bottle full of liquor.."
ITEM.model = "models/props_junk/garbage_glassbottle001a.mdl"
ITEM.healthRestore = 12
ITEM.price = 60
ITEM.category = "consumables"
ITEM.restore = 30
ITEM.flag = "l"
ITEM.permit = "consumables"

ITEM.functions.Drink = {
	icon = "icon16/cup.png",
	sound = "items/battery_pickup.wav",
	onRun = function(item)
		item.player:SetHealth(math.min(item.player:Health() + item.restore, 100))
		item.player:setLocalVar("stm", math.min(item.player:getLocalVar("stm", 100) + item.restore, 100))
	end
}
