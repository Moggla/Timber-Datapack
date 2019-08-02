#> save leaves distance tag at a XYZ position
summon area_effect_cloud ~ ~ ~ {Tags:["timber_leaf_distance"],Duration:1}
scoreboard players operation @e[tag=timber_leaf_distance,distance=...9,sort=arbitrary,limit=1] timber = leaf_distance timber

#> load leaves distance tag and search for next leaf
scoreboard players operation leaf_distance_old timber = @e[tag=timber_leaf_distance,distance=...9,sort=arbitrary,limit=1] timber
execute positioned ~ ~ ~1 unless entity @e[tag=timber_leaf_distance,distance=...9,sort=arbitrary,limit=1] if block ~ ~ ~ minecraft:oak_leaves[persistent=false] run function timber:oak_tree/leaves_destroy
scoreboard players operation leaf_distance_old timber = @e[tag=timber_leaf_distance,distance=...9,sort=arbitrary,limit=1] timber
execute positioned ~ ~ ~-1 unless entity @e[tag=timber_leaf_distance,distance=...9,sort=arbitrary,limit=1] if block ~ ~ ~ minecraft:oak_leaves[persistent=false] run function timber:oak_tree/leaves_destroy
scoreboard players operation leaf_distance_old timber = @e[tag=timber_leaf_distance,distance=...9,sort=arbitrary,limit=1] timber
execute positioned ~1 ~ ~ unless entity @e[tag=timber_leaf_distance,distance=...9,sort=arbitrary,limit=1] if block ~ ~ ~ minecraft:oak_leaves[persistent=false] run function timber:oak_tree/leaves_destroy
scoreboard players operation leaf_distance_old timber = @e[tag=timber_leaf_distance,distance=...9,sort=arbitrary,limit=1] timber
execute positioned ~-1 ~ ~ unless entity @e[tag=timber_leaf_distance,distance=...9,sort=arbitrary,limit=1] if block ~ ~ ~ minecraft:oak_leaves[persistent=false] run function timber:oak_tree/leaves_destroy
scoreboard players operation leaf_distance_old timber = @e[tag=timber_leaf_distance,distance=...9,sort=arbitrary,limit=1] timber
execute positioned ~ ~1 ~ unless entity @e[tag=timber_leaf_distance,distance=...9,sort=arbitrary,limit=1] if block ~ ~ ~ minecraft:oak_leaves[persistent=false] run function timber:oak_tree/leaves_destroy
scoreboard players operation leaf_distance_old timber = @e[tag=timber_leaf_distance,distance=...9,sort=arbitrary,limit=1] timber
execute positioned ~ ~-1 ~ unless entity @e[tag=timber_leaf_distance,distance=...9,sort=arbitrary,limit=1] if block ~ ~ ~ minecraft:oak_leaves[persistent=false] run function timber:oak_tree/leaves_destroy