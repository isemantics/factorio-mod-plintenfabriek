--[[ Copyright (C) 2018 - Michel Peters (Isemantics)
 * 
 *
 * 
--]]
data:extend(
{
	{
		type = "technology",
		name = "warehouse-research",
		icon = "__Plintenfabriek__/graphics/research/warehouse-research.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "warehouse-basic",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-basic",
			},
			{
				type = "unlock-recipe",
				recipe = "assembling-machine-plinten",
			},
		},
		prerequisites = {"steel-processing"},
		unit =
		{
			count = 1,
			ingredients =
			{
				{ "science-pack-1", 1},
			},
			time = 10
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "warehouse-logistics-research",
		icon = "__Plintenfabriek__/graphics/research/warehouse-logistics-research.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "warehouse-passive-provider",
			},
			{
				type = "unlock-recipe",
				recipe = "storehouse-passive-provider",
			},
		},
		prerequisites = { "warehouse-research" },
		unit =
		{
			count = 1,
			ingredients =
			{
				{ "science-pack-1", 1},
			},
			time = 10
		},
		order = "c-k-a"
	},
})

