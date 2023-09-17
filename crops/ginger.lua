local S = minetest.get_translator("simple_farming")
-- add to registered_plants
farming.register_plant("simple_farming:ginger",{
	description = "Ginger Seed",
	harvest_description = "Ginger",
	inventory_image = "simple_farming_ginger_seed.png",
	minlight = simple_farming.minlight,
	maxlight = simple_farming.maxlight,
	steps = 4,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

minetest.register_craftitem("simple_farming:ginger", {
	description = S("Ginger"),
	inventory_image = "simple_farming_ginger.png",
	on_use = minetest.item_eat(1),
})

minetest.register_decoration({
	name = "simple_farming:ginger_4",
	deco_type = "simple",
	place_on = {"default:dirt_with_snow", "default:dirt_with_rainforest_litter"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 4625,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"taiga", "tundra"},
	y_max = 31000,
	y_min = 1,
	decoration = "simple_farming:ginger_4",
	param2 = 3,
})

----------------------Gingerdough

minetest.register_craftitem("simple_farming:gingerdough", {
	description = "Gingerdough",
	inventory_image = "gingerdough.png",
	on_use = minetest.item_eat(1),
	groups = {food_cotton_candy = 1, flammable = 2},
})

minetest.register_craft({
	type = "cooking",
	output = "simple_farming:gingerdough",
	recipe = "simple_farming:ginger",
})

minetest.register_craft({
	output = "simple_farming:gingerdough 3",
	recipe = {
		{"bottles:bottle_of_water", "farming:flour", "simple_farming:ginger"},
		{"simple_farming:sugar", "simple_farming:sugar", ""},
	}
})

----------------------Gingerbread

minetest.register_craftitem("simple_farming:gingerbread", {
	description = "Gingerbread",
	inventory_image = "gingerbread.png",
	on_use = minetest.item_eat(2),
	groups = {food_cotton_candy = 1, flammable = 2},
})

minetest.register_craft({
	type = "cooking",
	output = "simple_farming:gingerbread",
	recipe = "simple_farming:gingerdough",
})

-----Gingerbread Man--------------

minetest.register_craftitem("simple_farming:gingerbread_man", {
	description = "Gingerbread Man",
	inventory_image = "gingerbread_man_1.png",
	on_use = minetest.item_eat(1),
	groups = {food_cotton_candy = 1, flammable = 2},
})


minetest.register_craft({
	output = "simple_farming:gingerbread_man",
	recipe = {
		{"", "simple_farming:gingerdough", ""},
		{"simple_farming:gingerdough", "simple_farming:gingerdough", "simple_farming:gingerdough"},
		{"simple_farming:gingerdough", "", "simple_farming:gingerdough"},
	}
})

table.insert(simple_farming.plant_infos, {"simple_farming:ginger_", 4, "simple_farming:seed_ginger"})
