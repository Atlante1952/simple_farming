local S = minetest.get_translator("simple_farming")
-- add to registered_plants
farming.register_plant("simple_farming:millet",{
	description = "Millet Seed",
	harvest_description = "Millet",
	inventory_image = "simple_farming_millet_seed.png",
	minlight = simple_farming.minlight,
	maxlight = simple_farming.maxlight,
	steps = 3,
	groups = { flammable = 2, grassland = 1, desert = 1 },
	fertility = {"grassland","desert"},
})

minetest.register_craftitem("simple_farming:millet", {
	description = S("Millet"),
	inventory_image = "simple_farming_millet.png",
	on_use = minetest.item_eat(1),
})

minetest.register_decoration({
	name = "simple_farming:millet_3",
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "default:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 4219,
		octaves = 3,
		persist = 1.1
	},
	biomes = {"deciduous_forest_ocean", "grassland_dunes", "grassland"},
	y_max = 15,
	y_min = 0,
	decoration = "simple_farming:millet_3",
	param2 = 3,
})

table.insert(simple_farming.plant_infos, {"simple_farming:millet_", 3, "simple_farming:seed_millet"})
