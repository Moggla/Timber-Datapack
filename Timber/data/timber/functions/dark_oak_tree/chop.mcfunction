#> resets
scoreboard players set durability_okay timber 0

#> keep track of tree size
scoreboard players add tree_size timber 1

#> wear out tool with randomizer
execute as @e[type=minecraft:area_effect_cloud,tag=timber_randomizer,sort=random,limit=1] if entity @s[tag=1] run scoreboard players add durability timber 1

#> mark block that will get destroyed
summon area_effect_cloud ~ ~ ~ {Tags:["timber_destroy"],Duration:1}

#> tool durability check
function timber:durability_check

#> search for next log
execute if score tree_size timber < max_tree_size timber positioned ~ ~1 ~ if block ~ ~ ~ #timber:dark_oak unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:dark_oak_tree/chop
execute if score tree_size timber < max_tree_size timber positioned ~ ~1 ~1 if block ~ ~ ~ #timber:dark_oak unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:dark_oak_tree/chop
execute if score tree_size timber < max_tree_size timber positioned ~ ~1 ~-1 if block ~ ~ ~ #timber:dark_oak unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:dark_oak_tree/chop
execute if score tree_size timber < max_tree_size timber positioned ~1 ~1 ~ if block ~ ~ ~ #timber:dark_oak unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:dark_oak_tree/chop
execute if score tree_size timber < max_tree_size timber positioned ~1 ~1 ~1 if block ~ ~ ~ #timber:dark_oak unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:dark_oak_tree/chop
execute if score tree_size timber < max_tree_size timber positioned ~1 ~1 ~-1 if block ~ ~ ~ #timber:dark_oak unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:dark_oak_tree/chop
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~1 ~ if block ~ ~ ~ #timber:dark_oak unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:dark_oak_tree/chop
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~1 ~1 if block ~ ~ ~ #timber:dark_oak unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:dark_oak_tree/chop
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~1 ~-1 if block ~ ~ ~ #timber:dark_oak unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:dark_oak_tree/chop

execute if score tree_size timber < max_tree_size timber positioned ~ ~ ~1 if block ~ ~ ~ #timber:dark_oak unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:dark_oak_tree/chop
execute if score tree_size timber < max_tree_size timber positioned ~ ~ ~-1 if block ~ ~ ~ #timber:dark_oak unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:dark_oak_tree/chop
execute if score tree_size timber < max_tree_size timber positioned ~1 ~ ~ if block ~ ~ ~ #timber:dark_oak unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:dark_oak_tree/chop
execute if score tree_size timber < max_tree_size timber positioned ~1 ~ ~1 if block ~ ~ ~ #timber:dark_oak unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:dark_oak_tree/chop
execute if score tree_size timber < max_tree_size timber positioned ~1 ~ ~-1 if block ~ ~ ~ #timber:dark_oak unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:dark_oak_tree/chop
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~ ~ if block ~ ~ ~ #timber:dark_oak unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:dark_oak_tree/chop
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~ ~1 if block ~ ~ ~ #timber:dark_oak unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:dark_oak_tree/chop
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~ ~-1 if block ~ ~ ~ #timber:dark_oak unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:dark_oak_tree/chop

#> destroy leaves
execute unless score destroy_leaves timber matches 1.. run scoreboard players set leaf_distance timber 0
execute unless score destroy_leaves timber matches 1.. run function timber:dark_oak_tree/leaves_search