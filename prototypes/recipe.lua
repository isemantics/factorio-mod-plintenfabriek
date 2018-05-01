--[[ Copyright (C) 2018 - Michel Peters (Isemantics)
 * 
 *
 * 
--]]
data:extend({
	{
		type = "recipe",
		name = "plint",
		enabled = true,
		category = "crafting",
		energy_required = 10,
		ingredients =
		{
		  {"wood", 5}
		},
		result = "plint"
	  },
	{ -- Basic Warehouse
		type = "recipe",
		name = "assembling-machine-plinten",
		enabled = "true",
		ingredients = 
		{
			{"steel-plate",5},
			{"iron-plate",5},
		},
		result = "assembling-machine-plinten"
	},
	{ -- Basic Warehouse
		type = "recipe",
		name = "warehouse-basic",
		enabled = "false",
		ingredients = 
		{
			{"steel-plate",10},
			{"iron-plate",10},
			{"stone-brick",20},
			{"wooden-chest",5},
		},
		result = "warehouse-basic"
	},
	{ -- Passive Provider Warehouse
		type = "recipe",
		name = "warehouse-passive-provider",
		enabled = "false",
		ingredients = 
		{
			{"warehouse-basic",1},
			{"logistic-chest-passive-provider",1},
			{"iron-plate",20},
			{"advanced-circuit", 5},
		},
		result = "warehouse-passive-provider"
	},
	{ -- Basic Storehouse
		type = "recipe",
		name = "storehouse-basic",
		enabled = "false",
		ingredients = 
		{
			{"steel-plate",20},
			{"iron-plate",40},
			{"stone-brick",10},
			{"wooden-chest",5},
		},
		result = "storehouse-basic"
	},
	{ -- Passive Provider Storehouse
		type = "recipe",
		name = "storehouse-passive-provider",
		enabled = "false",
		ingredients = 
		{
			{"storehouse-basic",1},
			{"logistic-chest-passive-provider",1},
			{"iron-plate",5},
			{"advanced-circuit", 2},
		},
		result = "storehouse-passive-provider"
	},
	{ -- Storage Storehouse
		type = "recipe",
		name = "storehouse-storage",
		enabled = "false",
		ingredients = 
		{
			{"storehouse-basic",1},
			{"logistic-chest-storage",1},
			{"iron-plate",5},
			{"advanced-circuit", 2},
			{"steel-chest",5},
		},
		result = "storehouse-storage"
	}
})
