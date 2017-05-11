function define_warehouse(name, logistics_name)
	local entity_type = "container";
	if (logistics_name ~= nil) then
		entity_type = "logistic-container";
	end
	local result = 
	{
		type = entity_type,
		name = "warehouse-" .. name,
		icon = "__Plintenfabriek__/graphics/icons/warehouse-" .. name .. ".png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 2, result = "warehouse-" .. name},
		max_health = 350,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
		selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
		fast_replaceable_group = "container",
		inventory_size = 800,
		picture =
		{
			filename = "__Plintenfabriek__/graphics/entity/warehouse-" .. name .. "-shadow.png",
			priority = "high",
			width = 260,
			height = 240,
			shift = {1.0, -0.3},
		},
		-- circuit_connector_sprites = define_warehouse_connector({0.1875, 0.15625}),
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {2.01, 0.6},
				green = {2.52, 0.6}
			},
			wire =
			{
				red = {1.71, 0.3},
				green = {2.22, 0.3}
			}
		},
	};

	if (logistics_name ~= nil) then
		result.max_health = 450;
		result.minable.hardness = 0.2;
		result.logistic_mode = logistics_name;
		if (logistics_name == "storage") then
			result.inventory_size = 2000;
		end
	end
	return result;
end

data:extend(
{
	define_warehouse("plintenfabriek", nil);
})

