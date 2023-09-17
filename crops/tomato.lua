local S = minetest.get_translator("simple_farming")
-- add to registered_plants
farming.register_plant("simple_farming:tomato",{
	description = "Tomato Seed",
	harvest_description = "Tomato",
	inventory_image = "simple_farming_tomato_seed.png",
	minlight = simple_farming.minlight,
	maxlight = simple_farming.maxlight,
	steps = 5,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

minetest.register_craftitem("simple_farming:tomato", {
	description = S("Tomato"),
	inventory_image = "simple_farming_tomato.png",
	on_use = minetest.item_eat(2),
})

minetest.register_decoration({
	name = "simple_farming:tomato_5",
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 4721,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"deciduous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "simple_farming:tomato_5",
	param2 = 3,
})

minetest.register_node("simple_farming:tomato_juice", {
	description = "Tomato Juice",
	on_use = minetest.item_eat(1),
	drawtype = "plantlike",
	tiles = {"tomato_juice.png"},
	inventory_image = "tomato_juice.png",
	wield_image = "tomato_juice.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = "simple_farming:tomato_juice",
	recipe = {
		{"vessels:glass_bottle", "simple_farming:tomato"},
	}
})

table.insert(simple_farming.plant_infos, {"simple_farming:tomato_", 5, "simple_farming:seed_tomato"})
