ITEM.name = "Watermelon"
ITEM.desc = "A mostly-ripe watermelon."
ITEM.model = "models/props_junk/watermelon01.mdl"
ITEM.healthRestore = 12
ITEM.price = 15
ITEM.category = "consumables"
ITEM.restore = 20
ITEM.functions.Eat = {
	icon = "icon16/cup.png",
	sound = "items/battery_pickup.wav",
	onRun = function(item)
		item.player:SetHealth(math.min(item.player:Health() + item.restore, 100))
		item.player:setLocalVar("stm", math.min(item.player:getLocalVar("stm", 100) + item.restore, 100))
	end
}
ITEM.permit = "food"
