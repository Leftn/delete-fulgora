local recycling = require("__quality__.prototypes.recycling")

-- Start technology editing
if data.raw.technology["recycling"] then
	data.raw.technology["recycling"].prerequisites = {"metallurgic-science-pack"}
	data.raw.technology["recycling"].research_trigger = null
	data.raw.technology["recycling"].unit =
    {
		ingredients =
		{
			{"metallurgic-science-pack", 1},
			{"space-science-pack", 1},
		},
		time = 30,
		count = 500
    }
	data.raw.technology["recycling"].effects =
    {
		{
			type = "unlock-recipe",
			recipe = "recycler"
		}
	}
end

if data.raw.technology["electromagnetic-plant"] then
	data.raw.technology["electromagnetic-plant"].prerequisites = {"recycling", "production-science-pack"}
	data.raw.technology["electromagnetic-plant"].research_trigger = null
	data.raw.technology["electromagnetic-plant"].unit =
    {
		ingredients =
		{
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"metallurgic-science-pack", 1},
			{"space-science-pack", 1},
			{"production-science-pack", 1}
		},
		time = 30,
		count = 1500
    }
	data.raw.technology["electromagnetic-plant"].effects =
    {
		{
			type = "unlock-recipe",
			recipe = "electromagnetic-plant"
		},
		{
			type = "unlock-recipe",
			recipe = "superconductor"
		}
	}
end

if data.raw.technology["electromagnetic-science-pack"] then
	data.raw.technology["electromagnetic-science-pack"].prerequisites = {"electromagnetic-plant"}
	data.raw.technology["electromagnetic-science-pack"].research_trigger = null
	data.raw.technology["electromagnetic-science-pack"].unit =
    {
		ingredients =
		{
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"metallurgic-science-pack", 1},
			{"space-science-pack", 1},
			{"production-science-pack", 1}
		},
		time = 30,
		count = 200
    }
	data.raw.technology["electromagnetic-science-pack"].effects =
    {
		{
			type = "unlock-recipe",
			recipe = "electromagnetic-science-pack"
		}
	}
end
-- End technology editing

-- Start recipe editing
if data.raw.recipe["electromagnetic-plant"] then
	data.raw.recipe["electromagnetic-plant"].surface_conditions = {
		{
			property = "pressure",
			min = 4000,
			max = 4000
		}
	}
	data.raw.recipe["electromagnetic-plant"].ingredients = {
		{type = "item", name = "processing-unit", amount = 50},
		{type = "item", name = "steel-plate", amount = 50},
		{type = "item", name = "bioflux", amount = 50},
		{type = "item", name = "refined-concrete", amount = 100},
		{type = "item", name = "tungsten-plate", amount = 100}
	}
end

if data.raw.recipe["superconductor"] then
	data.raw.recipe["superconductor"].ingredients = {
		{type = "fluid", name = "light-oil", amount = 10},
		{type = "item", name = "bioflux", amount = 1},
		{type = "item", name = "plastic-bar", amount = 1},
		{type = "item", name = "tungsten-plate", amount = 1}
	}
end

if data.raw.recipe["recycler"] then
		data.raw.recipe["recycler"].surface_conditions = {
		{
			property = "pressure",
			min = 4000,
			max = 4000
		}
	}
end

if data.raw.recipe["electromagnetic-science-pack"] then
		data.raw.recipe["electromagnetic-science-pack"].surface_conditions = {
		{
			property = "pressure",
			min = 4000,
			max = 4000
		}
	}
	data.raw.recipe["electromagnetic-science-pack"].ingredients = {
		{type = "item", name = "accumulator", amount = 1},
		{type = "item", name = "superconductor", amount = 1},
		{type = "fluid", name = "lubricant", amount = 20},
		{type = "item", name = "processing-unit", amount = 10}
	}
end

if data.raw.recipe["tesla-ammo"] then
	data.raw.recipe["tesla-ammo"].ingredients = {
		{type = "item", name = "superconductor", amount = 2},
		{type = "item", name = "steel-plate", amount = 1},
		{type = "item", name = "plastic-bar", amount = 1},
		{type = "fluid", name = "sulfuric-acid", amount = 30}
	}
end

if data.raw.recipe["mech-armor"] then
	data.raw.recipe["mech-armor"].ingredients = {
		{type = "item", name = "superconductor", amount = 100},
		{type = "item", name = "power-armor-mk2", amount = 1},
		{type = "item", name = "processing-unit", amount = 200},
		{type = "item", name = "steel-plate", amount = 200},
		{type = "item", name = "tungsten-plate", amount = 500},
		{type = "item", name = "bioflux", amount = 20}
	}
end

if data.raw.recipe["fusion-reactor-equipment"] then
	data.raw.recipe["fusion-reactor-equipment"].ingredients = {
		{type = "item", name = "fission-reactor-equipment", amount = 1},
		{type = "item", name = "fusion-power-cell", amount = 10},
		{type = "item", name = "superconductor", amount = 100},
		{type = "item", name = "quantum-processor", amount = 250},
		{type = "item", name = "bioflux", amount = 200},
		{type = "item", name = "carbon-fiber", amount = 100}
	}
end

if data.raw.recipe["battery-mk3-equipment"] then
	data.raw.recipe["battery-mk3-equipment"].ingredients = {
		{type = "item", name = "battery-mk2-equipment", amount = 5},
		{type = "item", name = "superconductor", amount = 10}
	}
end

if data.raw.recipe["tesla-turret"] then
	data.raw.recipe["tesla-turret"].ingredients = {
		{type = "item", name = "teslagun", amount = 2},
		{type = "item", name = "superconductor", amount = 50},
		{type = "item", name = "processing-unit", amount = 10},
		{type = "item", name = "tungsten-plate", amount = 50}
	}
end

if data.raw.recipe["teslagun"] then
	data.raw.recipe["teslagun"].ingredients = {
		{type = "item", name = "superconductor", amount = 10},
		{type = "item", name = "processing-unit", amount = 5},
		{type = "item", name = "tungsten-plate", amount = 10},
		{type = "item", name = "plastic-bar", amount = 30},
	}
end

if data.raw.recipe["lithium"] then
	data.raw.recipe["lithium"].ingredients = {
		{type = "item", name = "tungsten-plate", amount = 2},
		{type = "fluid", name = "lithium-brine", amount = 50},
		{type = "fluid", name = "ammonia", amount = 50}
	}
end

if data.raw.recipe["fusion-power-cell"] then
	data.raw.recipe["fusion-power-cell"].ingredients = {
		{type = "item", name = "bioflux", amount = 2},
		{type = "item", name = "lithium-plate", amount = 5},
		{type = "fluid", name = "ammonia", amount = 100}
	}
end
-- End recipe editing

-- Start item editing
if data.raw.item["recycler"] then
	data.raw.item["recycler"].default_import_location = "vulcanus"
end

if data.raw.item["electromagnetic-plant"] then
	data.raw.item["electromagnetic-plant"].default_import_location = "vulcanus"
end

if data.raw.item["superconductor"] then
	data.raw.item["superconductor"].default_import_location = "vulcanus"
end

if data.raw.item["tesla-turret"] then
	data.raw.item["tesla-turret"].default_import_location = "vulcanus"
end
-- End item editing

data.raw.planet["fulgora"].map_gen_settings = null
if data.raw.planet["fulgora"] then
	data.raw.planet["fulgora"].hidden = true
end

data.raw["utility-constants"]["default"].main_menu_simulations.fulgora_city_crossing = data.raw["utility-constants"]["default"].main_menu_simulations.nauvis_biolab
data.raw["utility-constants"]["default"].main_menu_simulations.fulgora_recycling_hell = data.raw["utility-constants"]["default"].main_menu_simulations.nauvis_biolab
data.raw["utility-constants"]["default"].main_menu_simulations.fulgora_nightfall = data.raw["utility-constants"]["default"].main_menu_simulations.nauvis_biolab
data.raw["utility-constants"]["default"].main_menu_simulations.fulgora_race = data.raw["utility-constants"]["default"].main_menu_simulations.nauvis_biolab

delete_generic("battery-mk3-equipment-recycling", "recipe")
delete_generic("mech-armor-recycling", "recipe")
delete_generic("supercapacitor-recycling", "recipe")
delete_generic("lightning-collector-recycling", "recipe")
delete_generic("tesla-turret-recycling", "recipe")
delete_generic("tesla-ammo-recycling", "recipe")
delete_generic("fusion-reactor-equipment-recycling", "recipe")
delete_generic("superconductor-recycling", "recipe")
delete_generic("teslagun-recycling", "recipe")
delete_generic("electromagnetic-plant-recycling", "recipe")
delete_generic("holmium-plate-recycling", "recipe")
delete_generic("scrap-recycling", "recipe")
delete_generic("lightning-rod", "recipe")
delete_generic("lightning-rod-recycling", "recipe")
delete_generic("holmium-solution", "recipe")
delete_generic("holmium-ore-recycling", "recipe")

recycling.generate_recycling_recipe(data.raw.recipe["superconductor"])
recycling.generate_recycling_recipe(data.raw.recipe["tesla-turret"])
recycling.generate_recycling_recipe(data.raw.recipe["tesla-ammo"])
recycling.generate_recycling_recipe(data.raw.recipe["fusion-reactor-equipment"])
recycling.generate_recycling_recipe(data.raw.recipe["battery-mk3-equipment"])
recycling.generate_recycling_recipe(data.raw.recipe["mech-armor"])
recycling.generate_recycling_recipe(data.raw.recipe["electromagnetic-plant"])
recycling.generate_recycling_recipe(data.raw.recipe["teslagun"])

delete_generic("lightning-collector", "technology")
delete_generic("scrap-recycling-productivity", "technology")
delete_generic("holmium-processing", "technology")
delete_generic("planet-discovery-fulgora", "technology")

delete_generic("fulgoran-ruin-small", "simple-entity")
delete_generic("fulgoran-ruin-medium", "simple-entity")
delete_generic("fulgoran-ruin-stonehenge", "simple-entity")
delete_generic("fulgoran-ruin-big", "simple-entity")
delete_generic("fulgoran-ruin-huge", "simple-entity")
delete_generic("fulgoran-ruin-colossal", "simple-entity")
delete_generic("fulgoran-ruin-vault", "simple-entity")
delete_generic("fulgurite-small", "simple-entity")
delete_generic("fulgurite", "simple-entity")
delete_generic("scrap", "resource")

delete_generic("fulgoran-ruin-attractor", "lightning-attractor")
delete_generic("lightning-rod", "lightning-attractor")
delete_generic("lightning-collector", "lightning-attractor")

delete_generic("supercapacitor", "recipe")
delete_generic("lightning-collector", "recipe")
delete_generic("holmium-plate", "recipe")
delete_generic("electrolyte", "recipe")

delete_generic("supercapacitor", "item")
delete_generic("holmium-plate", "item")
delete_generic("holmium-ore", "item")
delete_generic("lightning-rod", "item")
delete_generic("lightning-collector", "item")
delete_generic("scrap", "item")

delete_generic("electrolyte", "fluid")
delete_generic("holmium-solution", "fluid")

delete_generic("fulgora-briefing", "tips-and-tricks-item")
delete_generic("lightning-mechanics", "tips-and-tricks-item")
