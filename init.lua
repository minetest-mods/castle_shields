minetest.register_alias("castle:shield", "castle_shields:shield")
minetest.register_alias("castle:shield_2", "castle_shields:shield_2")
minetest.register_alias("castle:shield_3", "castle_shields:shield_3")

-- internationalization boilerplate
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

local register_shield = function(name, tile_side, tile_front, dye_1, dye_2)
minetest.register_node("castle_shields:"..name, {
	description = S("Mounted Shield"),
	tiles = {tile_side, tile_side, tile_side, tile_side, "castle_shield_back.png", tile_front},
	drawtype="nodebox",
	paramtype2 = "facedir",
	paramtype = "light",
	groups={cracky=3},
	sounds = default.node_sound_metal_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.500000,-0.125000,0.375000,0.500000,0.500000,0.500000},
			{-0.437500,-0.312500,0.375000,0.425000,0.500000,0.500000},
			{-0.312500,-0.437500,0.375000,0.312500,0.500000,0.500000},
			{-0.187500,-0.500000,0.375000,0.187500,0.500000,0.500000},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.500000,-0.500000,0.375000,0.500000,0.500000,0.500000},
		},
	},
})

minetest.register_craft({
	output = "castle_shields:"..name,
	recipe = {
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		{dye_1, "default:steel_ingot", dye_2},
	}
})
end

register_shield("shield", "castle_shield_side.png", "castle_shield_front.png", "dye:red", "dye:blue")
register_shield("shield_2", "castle_shield_side_2.png", "castle_shield_front_2.png", "dye:cyan", "dye:yellow")
register_shield("shield_3", "castle_shield_side_3.png", "castle_shield_front_3.png", "dye:grey", "dye:green")
