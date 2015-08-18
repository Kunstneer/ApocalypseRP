ITEM.name = "Canned Beans"
ITEM.desc = "A dented can of pre-cooked beans. Please open the can."
ITEM.model = "models/props_junk/garbage_metalcan001a.mdl"
ITEM.healthRestore = 18
ITEM.price = 16
ITEM.category = "consumables"
ITEM.restore = 26
ITEM.functions.Eat = {
	icon = "icon16/cup.png",
	sound = "items/battery_pickup.wav",
	onRun = function(item)
		item.player:SetHealth(math.min(item.player:Health() + item.restore, 100))
		item.player:setLocalVar("stm", math.min(item.player:getLocalVar("stm", 100) + item.restore, 100))
	end
}
ITEM.permit = "food"
