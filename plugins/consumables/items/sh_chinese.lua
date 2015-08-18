ITEM.name = "Chinese Takeout"
ITEM.desc = "A folded box full of Chinese food."
ITEM.model = "models/props_junk/garbage_takeoutcarton001a.mdl"
ITEM.healthRestore = 20
ITEM.price = 15
ITEM.category = "consumables"
ITEM.restore = 33
ITEM.functions.Eat = {
	icon = "icon16/cup.png",
	sound = "items/battery_pickup.wav",
	onRun = function(item)
		item.player:SetHealth(math.min(item.player:Health() + item.restore, 100))
		item.player:setLocalVar("stm", math.min(item.player:getLocalVar("stm", 100) + item.restore, 100))
	end
}
ITEM.permit = "food"
