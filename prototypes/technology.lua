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
				recipe = "warehouse-plintenfabriek",
			}
		},
		prerequisites = {},
		unit =
		{
			count = 1,
			ingredients = {{ "science-pack-1", 1}},
			time = 10
		},
		order = "c-a"
	}
})

