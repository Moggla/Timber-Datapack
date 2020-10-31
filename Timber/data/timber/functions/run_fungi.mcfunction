# reset
scoreboard players set tree_size timber 0
kill @e[type=minecraft:area_effect_cloud,tag=timber_leaves_found]
kill @e[type=minecraft:area_effect_cloud,tag=timber_logs,tag=!timber_destroy]
kill @e[type=minecraft:area_effect_cloud,tag=timber_leaf,tag=!timber_destroy]

# get durability
function timber:tool/durability_get

# fungi
execute at @e[type=minecraft:area_effect_cloud,tag=timber_tree,tag=!timber_slow_chop,distance=..7,sort=arbitrary,limit=1] run function timber:algorithm/fungus/run
execute store result score leaves_found timber if entity @e[type=minecraft:area_effect_cloud,tag=timber_leaves_found]
# if fungi is valid
execute if score leaves_found timber >= min_leaves_found timber unless score tree_size timber matches 0 run scoreboard players set tree_type timber 2

# don't destroy the blocks in a radius of 5 blocks from other stems
execute if score tree_type timber matches 2 run function timber:algorithm/fungus/leaves/find_other_stems
execute if score tree_type timber matches 2 at @e[type=minecraft:area_effect_cloud,tag=timber_other_stem] run kill @e[type=minecraft:area_effect_cloud,tag=timber_cap,distance=..5]