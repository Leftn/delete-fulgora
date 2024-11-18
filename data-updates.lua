
-- Start technology editing
if data.raw.technology["foundry"] then
    data.raw.technology["foundry"].prerequisites = {"electromagnetic-plant", "bioflux"}
    data.raw.technology["foundry"].research_trigger = null
	data.raw.technology["foundry"].unit = {
		count = 500,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"production-science-pack", 1},
			{"electromagnetic-science-pack", 1},
			{"space-science-pack", 1}
		},
		time = 60
	}
end

if data.raw.technology["tungsten-steel"] then
    data.raw.technology["tungsten-steel"].prerequisites = {"foundry"}
    data.raw.technology["tungsten-steel"].research_trigger = null
	data.raw.technology["tungsten-steel"].unit = {
		count = 500,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"production-science-pack", 1},
			{"electromagnetic-science-pack", 1},
			{"space-science-pack", 1}
		},
		time = 60
	}
end
-- End technology editing

-- Start recipe editing
if data.raw.recipe["molten-iron"] then
	data.raw.recipe["molten-iron"].ingredients = {
		{type = "item", name = "iron-ore", amount = 50},
		{type = "fluid", name = "holmium-solution", amount = 10}
	}
end

if data.raw.recipe["molten-copper"] then
	data.raw.recipe["molten-copper"].ingredients = {
		{type = "item", name = "copper-ore", amount = 50},
		{type = "fluid", name = "holmium-solution", amount = 10}
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

if data.raw.recipe["tungsten-plate"] then
	data.raw.recipe["tungsten-plate"].ingredients = {
		{type = "fluid", name = "molten-iron", amount = 10},
		{type = "fluid", name = "electrolyte", amount = 10}
	}
end

if data.raw.recipe["foundry"] then
	data.raw.recipe["foundry"].ingredients = {
		{type = "item", name = "superconductor", amount = 50},
		{type = "item", name = "bioflux", amount = 10},
		{type = "item", name = "electronic-circuit", amount = 30},
		{type = "item", name = "refined-concrete", amount = 20},
		{type = "fluid", name = "lubricant", amount = 20}
	}
	data.raw.recipe["foundry"].surface_conditions = {
		{
			property = "pressure",
			min = 1000,
			max = 2000
		}
	}
end

if data.raw.recipe["quantum-processor"] then
	data.raw.recipe["quantum-processor"].ingredients = {
		{type = "item", name = "tungsten-plate", amount = 1},
		{type = "item", name = "processing-unit", amount = 1},
		{type = "item", name = "superconductor", amount = 1},
		{type = "item", name = "carbon-fiber", amount = 1},
		{type = "item", name = "lithium-plate", amount = 2},
		{type = "fluid", name = "fluoroketone-cold", amount = 10, ignored_by_stats = 10}
	}
end

if data.raw.recipe["big-mining-drill"] then
	data.raw.recipe["big-mining-drill"].ingredients = {
      {type = "item", name = "electric-mining-drill", amount = 1},
      {type = "fluid", name = "molten-iron", amount = 200},
      {type = "item", name = "superconductor", amount = 20},
      {type = "item", name = "electric-engine-unit", amount = 10},
      {type = "item", name = "advanced-circuit", amount = 10}
	}
	data.raw.recipe["big-mining-drill"].surface_conditions = {
		{
			property = "pressure",
			min = 1000,
			max = 2000
		}
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

if data.raw.recipe["speed-module-3"] then
	data.raw.recipe["speed-module-3"].ingredients =
    {
      {type = "item", name = "speed-module-2", amount = 4},
      {type = "item", name = "advanced-circuit", amount = 5},
      {type = "item", name = "processing-unit", amount = 5},
	  {type = "item", name = "tungsten-plate", amount = 1},
    }
end

if data.raw.recipe["advanced-metallic-asteroid-crushing"] then
	data.raw.recipe["advanced-metallic-asteroid-crushing"].results = {
      {type = "item", name = "iron-ore", amount = 10},
      {type = "item", name = "stone", amount = 4},
      {type = "item", name = "metallic-asteroid-chunk", amount = 1, probability = 0.05}
    }
	data.raw.recipe["advanced-metallic-asteroid-crushing"].icon = "__delete-vulcanus__/graphics/icons/advanced-metallic-asteroid-processing.png"
end

if data.raw.recipe["advanced-oxide-asteroid-crushing"] then
	data.raw.recipe["advanced-oxide-asteroid-crushing"].results = {
		{type = "item", name = "ice", amount = 5},
		{type = "item", name = "holmium-ore", amount = 2},
		{type = "item", name = "oxide-asteroid-chunk", amount = 1, probability = 0.05}
	}
	data.raw.recipe["advanced-oxide-asteroid-crushing"].icon = "__delete-vulcanus__/graphics/icons/advanced-oxide-asteroid-processing.png"
end

if data.raw.recipe["advanced-thruster-fuel"] then
	data.raw.recipe["advanced-thruster-fuel"].ingredients = {
		{type = "item", name = "carbon", amount = 2},
		{type = "item", name = "holmium-ore", amount = 1},
		{type = "fluid", name = "water", amount = 100}
	}
	data.raw.recipe["advanced-thruster-fuel"].icon = "__delete-vulcanus__/graphics/icons/advanced-thruster-fuel.png"
end

if data.raw.recipe["advanced-thruster-oxidizer"] then
	data.raw.recipe["advanced-thruster-oxidizer"].ingredients = {
		{type = "item", name = "iron-ore", amount = 2},
		{type = "item", name = "holmium-ore", amount = 1},
		{type = "fluid", name = "water", amount = 100}
	}
	data.raw.recipe["advanced-thruster-oxidizer"].icon = "__delete-vulcanus__/graphics/icons/advanced-thruster-oxidizer.png"
end

if data.raw.recipe["metallurgic-science-pack"] then
	data.raw.recipe["metallurgic-science-pack"].ingredients = {
		{type = "fluid", name = "holmium-solution", amount = 2},
		{type = "item", name = "steel-plate", amount = 1},
		{type = "fluid", name = "molten-copper", amount = 100}
	}
	data.raw.recipe["metallurgic-science-pack"].surface_conditions = {
		{
			property = "pressure",
			min = 1000,
			max = 2000
		}
	}
end

-- End recipe editing

-- Start item editing
if data.raw.item["foundry"] then
	data.raw.item["foundry"].default_import_location = "nauvis"
end

if data.raw.item["metallurgic-science-pack"] then
	data.raw.item["metallurgic-science-pack"].default_import_location = "fulgora"
end

if data.raw.item["big-mining-drill"] then
	data.raw.item["big-mining-drill"].default_import_location = "nauvis"
end

if data.raw.item["tungsten-plate"] then
	data.raw.item["tungsten-plate"].default_import_location = "fulgora"
end
-- End item editing

data.raw.planet["vulcanus"].map_gen_settings = null
if data.raw.planet["vulcanus"] then
	data.raw.planet["vulcanus"].hidden = true
end

data.raw["utility-constants"]["default"].main_menu_simulations.fulgora_city_crossing = data.raw["utility-constants"]["default"].main_menu_simulations.nauvis_biolab
data.raw["utility-constants"]["default"].main_menu_simulations.fulgora_recycling_hell = data.raw["utility-constants"]["default"].main_menu_simulations.nauvis_biolab
data.raw["utility-constants"]["default"].main_menu_simulations.fulgora_nightfall = data.raw["utility-constants"]["default"].main_menu_simulations.nauvis_biolab
data.raw["utility-constants"]["default"].main_menu_simulations.fulgora_race = data.raw["utility-constants"]["default"].main_menu_simulations.nauvis_biolab


delete_generic("planet-discovery-vulcanus", "technology")
delete_generic("calcite-processing", "technology")
delete_generic("tungsten-carbide", "technology")

delete_generic("molten-iron-from-lava", "recipe")
delete_generic("molten-copper-from-lava", "recipe")
delete_generic("tungsten-carbide", "recipe")

delete_generic("tungsten-ore", "resource")
delete_generic("calcite", "resource")

delete_generic("lava", "fluid")

delete_generic("tungsten-carbide", "item")
delete_generic("tungsten-ore", "item")
delete_generic("calcite", "item")

delete_generic("small-demolisher", "segmented-unit")
delete_generic("medium-demolisher", "segmented-unit")
delete_generic("big-demolisher", "segmented-unit")