--[[ Copyright (C) 2018 - Michel Peters (Isemantics)
 * 
 *
 * 
--]]

function define_warehouse_connector(mainOffset)
	local logisticAnimationOffset = {0.015625, 0.234375};
	local result =
	{
		connector_main =
		{
			filename = "__Plintenfabriek__/graphics/entity/circuit-connector/circuit-connector-main.png",
			priority = "low",
			width = 28,
			height = 27,
			x = 0,
			y = 0,
			shift = {0 + mainOffset[1], 0.015625 + mainOffset[2]},
		},
		led_red =
		{
			filename = "__Plintenfabriek__/graphics/entity/circuit-connector/circuit-connector-led-red.png",
			priority = "low",
			width = 20,
			height = 16,
			x = 0,
			y = 0,
			shift = {0 + mainOffset[1], -0.03125 + mainOffset[2]},
		},
		led_green =
		{
			filename = "__Plintenfabriek__/graphics/entity/circuit-connector/circuit-connector-led-green.png",
			priority = "low",
			width = 20,
			height = 16,
			x = 0,
			y = 0,
			shift = {0 + mainOffset[1], -0.03125 + mainOffset[2]},
		},
		led_blue =
		{
			filename = "__Plintenfabriek__/graphics/entity/circuit-connector/circuit-connector-led-blue.png",
			priority = "low",
			width = 21,
			height = 22,
			x = 0,
			y = 0,
			shift = {-0.015625 + mainOffset[1], 0 + mainOffset[2]},
		},
		logistic_animation = 
		{
			filename = "__Plintenfabriek__/graphics/entity/circuit-connector/circuit-connector-logistic-animation.png",
			priority = "low",
			blend_mode = "additive",
			line_length = 4,
			width = 43,
			height = 43,
			frame_count = 15,
			shift = {0.015625 + logisticAnimationOffset[1] + mainOffset[1], -0.234375 + logisticAnimationOffset[2] + mainOffset[2]},
		},

		led_light =
		{
			intensity = 0.8,
			size = 0.9,
		},
		blue_led_light_offset = {0 + mainOffset[1], -0.03125 + mainOffset[2]},
		red_green_led_light_offset = {0 + mainOffset[1], -0.15625 + mainOffset[2]},
	};

	return result;
end

function define_storehouse_connector(mainOffset)
	local logisticAnimationOffset = {0.015625, 0.234375};
	local result =
	{
		connector_main =
		{
			filename = "__Plintenfabriek__/graphics/entity/circuit-connector/circuit-connector-main.png",
			priority = "low",
			width = 28,
			height = 27,
			x = 0,
			y = 0,
			shift = {0 + mainOffset[1], 0.015625 + mainOffset[2]},
		},
		led_red =
		{
			filename = "__Plintenfabriek__/graphics/entity/circuit-connector/circuit-connector-led-red.png",
			priority = "low",
			width = 20,
			height = 16,
			x = 0,
			y = 0,
			shift = {0 + mainOffset[1], -0.03125 + mainOffset[2]},
		},
		led_green =
		{
			filename = "__Plintenfabriek__/graphics/entity/circuit-connector/circuit-connector-led-green.png",
			priority = "low",
			width = 20,
			height = 16,
			x = 0,
			y = 0,
			shift = {0 + mainOffset[1], -0.03125 + mainOffset[2]},
		},
		led_blue =
		{
			filename = "__Plintenfabriek__/graphics/entity/circuit-connector/circuit-connector-led-blue.png",
			priority = "low",
			width = 21,
			height = 22,
			x = 0,
			y = 0,
			shift = {-0.015625 + mainOffset[1], 0 + mainOffset[2]},
		},
		logistic_animation = 
		{
			filename = "__Plintenfabriek__/graphics/entity/circuit-connector/circuit-connector-logistic-animation.png",
			priority = "low",
			blend_mode = "additive",
			line_length = 4,
			width = 43,
			height = 43,
			frame_count = 15,
			shift = {0.015625 + logisticAnimationOffset[1] + mainOffset[1], -0.234375 + logisticAnimationOffset[2] + mainOffset[2]},
		},

		led_light =
		{
			intensity = 0.8,
			size = 0.9,
		},
		blue_led_light_offset = {0 + mainOffset[1], -0.03125 + mainOffset[2]},
		red_green_led_light_offset = {0 + mainOffset[1], -0.15625 + mainOffset[2]},
	};

	return result;
end

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
		icon_size = 32,
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
		drawing_box = {{-3.0, -3.0}, {3.0, 3.0}},
		fast_replaceable_group = "container",
		inventory_size = 800,
		scale_info_icons = false,
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
			result.logistic_slots_count = 1;
		end
		if ((logistics_name == "requester") or (logistics_name == "buffer")) then
			result.logistic_slots_count = 12;
		end
	end
	return result;
end

function define_storehouse(name, logistics_name)
	local entity_type = "container";
	if (logistics_name ~= nil) then
		entity_type = "logistic-container";
	end
	local result = 
	{
		type = entity_type,
		name = "storehouse-" .. name,
		icon = "__Plintenfabriek__/graphics/icons/storehouse-" .. name .. ".png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 2, result = "storehouse-" .. name},
		max_health = 250,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		scale_entity_info_icon = true,
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "container",
		inventory_size = 150,
		scale_info_icons = true,
		picture =
		{
			filename = "__Plintenfabriek__/graphics/entity/storehouse-" .. name .. ".png",
			priority = "high",
			width = 129,
			height = 100,
			shift = {0.421875, 0},
		},
		-- circuit_connector_sprites = define_storehouse_connector({0.1875, 0.15625}),
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {.26, -0.6},
				green = {.36, -0.6}
			},
			wire =
			{
				red = {-0.16, -0.9},
				green = {0.16, -0.9}
			}
		},
	};

	if (logistics_name ~= nil) then
		result.minable.hardness = 0.2;
		result.logistic_mode = logistics_name;
		if (logistics_name == "storage") then
			result.inventory_size = 300;
			result.logistic_slots_count = 1;
		end
		if ((logistics_name == "requester") or (logistics_name == "buffer")) then
			result.logistic_slots_count = 12;
		end
	end
	return result;
end

data:extend(
{
	define_warehouse("basic", nil),
	define_warehouse("passive-provider", "passive-provider"),

	define_storehouse("basic", nil),
	define_storehouse("passive-provider", "passive-provider"),
	define_storehouse("storage", "storage"),

	{
		type = "assembling-machine",
		name = "assembling-machine-plinten",
		icon = "__Plintenfabriek__/graphics/icons/assembling-machine-plinten.png",
		icon_size = 32,		
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "assembling-machine-plinten"},
		max_health = 100,
		corpse = "small-remnants",
		dying_explosion = "medium-explosion",
		resistances = {
		  {
			type = "fire",
			percent = 70
		  }
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		animation = {
			filename = "__Plintenfabriek__/graphics/entity/assembling-machine-plinten.png",
			priority="high",
			width = 108,
			height = 114,
			frame_count = 32,
			line_length = 8,
			shift = util.by_pixel(0, 2),
		},
		crafting_categories = {"crafting"},
		crafting_speed = 1.5, -- asembling-machine-1 has 0.5
		energy_source = {
		  type = "electric",
		  usage_priority = "secondary-input",
		  emissions = 0.05 / 1.5
		},
		energy_usage = "70kW", -- assembling-machine-1 has 90kW
		ingredient_count = 1, -- can only make recipes with ONE ingredient
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound = {
		  sound = {
			{
			  filename = "__Plintenfabriek__/sound/assembling-machine-t0-1.ogg",
			  volume = 0.8
			},
			{
			  filename = "__Plintenfabriek__/sound/assembling-machine-t0-2.ogg",
			  volume = 0.8
			},
		  },
		  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
		  apparent_volume = 1.5,
		}
	  }
})

