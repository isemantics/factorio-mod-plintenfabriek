--[[ Copyright (C) 2018 - Michel Peters (Isemantics)
 * 
 *
 * 
--]]
data:extend({
	{
		type = "item",
		name = "assembling-machine-plinten",
		icon = "__Plintenfabriek__/graphics/icons/assembling-machine-plinten.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "production-machine",
		order = "a[assembling-machine-plinten]",
		place_result = "assembling-machine-plinten",
		stack_size = 20
	  },
	  {
		type = "item",
		name = "plint",
		icon_size = 32,
		icon = "__Plintenfabriek__/graphics/icons/plint.png",
		flags = {"goes-to-quickbar"},
		order = "a[plint]",
		subgroup = "trees",
		place_result = "",
		stack_size = 50
	  },
	{
		type = "item",
		name = "warehouse-basic",
		icon = "__Plintenfabriek__/graphics/icons/warehouse-basic.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "storage",
		order = "a[items]-c[warehouse]",
		place_result = "warehouse-basic",
		stack_size = 15
	},
	{
		type = "item",
		name = "warehouse-passive-provider",
		icon = "__Plintenfabriek__/graphics/icons/warehouse-passive-provider.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-passive-provider]-b[warehouse]",
		place_result = "warehouse-passive-provider",
		stack_size = 15
	},
	{
		type = "item",
		name = "storehouse-basic",
		icon = "__Plintenfabriek__/graphics/icons/storehouse-basic.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "storage",
		order = "a[items]-c[storehouse]",
		place_result = "storehouse-basic",
		stack_size = 15
	},
	{
		type = "item",
		name = "storehouse-passive-provider",
		icon = "__Plintenfabriek__/graphics/icons/storehouse-passive-provider.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-passive-provider]-a[storehouse]",
		place_result = "storehouse-passive-provider",
		stack_size = 15
	},
	{
		type = "item",
		name = "storehouse-storage",
		icon = "__Plintenfabriek__/graphics/icons/storehouse-storage.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "logistic-network",
		order = "b[storage]-c[logistic-chest-storage]-a[storehouse]",
		place_result = "storehouse-storage",
		stack_size = 15
	}
})
