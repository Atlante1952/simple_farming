local S = minetest.get_translator("simple_farming")
-- add to registered_plants
farming.register_plant("simple_farming:aloe",{
	description = "Aloe Seed",
	harvest_description = "Aloe",
	inventory_image = "simple_farming_aloe_seed.png",
	minlight = simple_farming.minlight,
	maxlight = simple_farming.maxlight,
	steps = 3,
	groups = { flammable = 2, desert = 1 },
	fertility = {"desert"},
})

-- needed
minetest.register_craftitem("simple_farming:aloe", {
	description = S("Aloe"),
	inventory_image = "simple_farming_aloe.png",
	on_use = minetest.item_eat(2),
})

minetest.register_decoration({
	name = "simple_farming:aloe_3",
	deco_type = "simple",
	place_on = {"default:desert_sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 2548,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"desert"},
	y_max = 31000,
	y_min = 1,
	decoration = "simple_farming:aloe_3",
	param2 = 3,
})

table.insert(simple_farming.plant_infos, {"simple_farming:aloe_", 3, "simple_farming:seed_aloe"})
