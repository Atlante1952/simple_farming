local S = minetest.get_translator("simple_farming")
-- add to registered_plants
farming.register_plant("simple_farming:strawberry",{
	description = "Strawberry Seed",
	harvest_description = "Strawberry",
	inventory_image = "simple_farming_strawberry_seed.png",
	minlight = simple_farming.minlight,
	maxlight = simple_farming.maxlight,
	steps = 8,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

minetest.register_craftitem("simple_farming:strawberry", {
	description = S("Strawberry"),
	inventory_image = "simple_farming_strawberry.png",
	on_use = minetest.item_eat(3),
})

minetest.register_decoration({
	name = "simple_farming:strawberry_8",
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 5045,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grassland"},
	y_max = 31000,
	y_min = 1,
	decoration = "simple_farming:strawberry_8",
	param2 = 3,
})

if minetest.get_modpath("animalia") then
	minetest.register_craftitem("simple_farming:strawberry_cake", {
		description = "Strawberry Cake",
		on_use = minetest.item_eat(5),
		inventory_image = "simple_farming_strawberry_cake.png",
	})

	minetest.register_craft({
		output = "simple_farming:strawberry_cake",
		recipe = {
			{"simple_farming:strawberry", "simple_farming:strawberry", "simple_farming:strawberry" },
			{"animalia:chicken_egg_fried", "farming:flour", "animalia:chicken_egg_fried" },
			{"farming:flour", "farming:flour", "farming:flour" }
		}
	})
end

table.insert(simple_farming.plant_infos, {"simple_farming:strawberry_", 8, "simple_farming:seed_strawberry"})
