minetest.register_alias("castle:shield", "castle_shields:shield_1")
minetest.register_alias("castle:shield_2", "castle_shields:shield_2")
minetest.register_alias("castle:shield_3", "castle_shields:shield_3")

castle_shields = {}

local MP = minetest.get_modpath(minetest.get_current_modname())
dofile(MP.."/shield_functions.lua")
dofile(MP.."/default_shields.lua")
