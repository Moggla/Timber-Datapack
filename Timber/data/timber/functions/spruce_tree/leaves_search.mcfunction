### save leaves distance tag ###
summon area_effect_cloud ~ ~ ~ {Tags:["timber_leaf_distance"],Duration:2}
scoreboard players operation @e[tag=timber_leaf_distance,sort=nearest,limit=1] timber = leaf_distance timber

### load leaves distance tag and search for next leaf ###
scoreboard players operation leaf_distance_old timber = @e[tag=timber_leaf_distance,sort=nearest,limit=1] timber
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:spruce_leaves[persistent=false] run function timber:spruce_tree/leaves_destroy
scoreboard players operation leaf_distance_old timber = @e[tag=timber_leaf_distance,sort=nearest,limit=1] timber
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:spruce_leaves[persistent=false] run function timber:spruce_tree/leaves_destroy
scoreboard players operation leaf_distance_old timber = @e[tag=timber_leaf_distance,sort=nearest,limit=1] timber
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:spruce_leaves[persistent=false] run function timber:spruce_tree/leaves_destroy
scoreboard players operation leaf_distance_old timber = @e[tag=timber_leaf_distance,sort=nearest,limit=1] timber
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:spruce_leaves[persistent=false] run function timber:spruce_tree/leaves_destroy
scoreboard players operation leaf_distance_old timber = @e[tag=timber_leaf_distance,sort=nearest,limit=1] timber
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:spruce_leaves[persistent=false] run function timber:spruce_tree/leaves_destroy
scoreboard players operation leaf_distance_old timber = @e[tag=timber_leaf_distance,sort=nearest,limit=1] timber
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:spruce_leaves[persistent=false] run function timber:spruce_tree/leaves_destroy