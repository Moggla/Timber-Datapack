#> keep track of tree size
scoreboard players add tree_size timber 1

#> mark log that have been checked
summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:1}

#> search for leaves and note it
execute positioned ~ ~ ~1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] if block ~ ~ ~ minecraft:spruce_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute positioned ~ ~ ~-1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] if block ~ ~ ~ minecraft:spruce_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute positioned ~1 ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] if block ~ ~ ~ minecraft:spruce_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute positioned ~-1 ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] if block ~ ~ ~ minecraft:spruce_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute positioned ~ ~1 ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] if block ~ ~ ~ minecraft:spruce_leaves[persistent=false] run scoreboard players add leaves_found timber 1

#> mark leaf that have been checked
execute positioned ~ ~ ~1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] if block ~ ~ ~ minecraft:spruce_leaves[persistent=false] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:1}
execute positioned ~ ~ ~-1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] if block ~ ~ ~ minecraft:spruce_leaves[persistent=false] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:1}
execute positioned ~1 ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] if block ~ ~ ~ minecraft:spruce_leaves[persistent=false] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:1}
execute positioned ~-1 ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] if block ~ ~ ~ minecraft:spruce_leaves[persistent=false] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:1}
execute positioned ~ ~1 ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] if block ~ ~ ~ minecraft:spruce_leaves[persistent=false] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:1}

#> goto next log
execute if score tree_size timber < max_tree_size timber positioned ~ ~ ~1 if block ~ ~ ~ #timber:spruce unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:spruce_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~ ~ ~-1 if block ~ ~ ~ #timber:spruce unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:spruce_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~1 ~ ~ if block ~ ~ ~ #timber:spruce unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:spruce_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~1 ~ ~1 if block ~ ~ ~ #timber:spruce unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:spruce_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~1 ~ ~-1 if block ~ ~ ~ #timber:spruce unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:spruce_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~ ~ if block ~ ~ ~ #timber:spruce unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:spruce_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~ ~1 if block ~ ~ ~ #timber:spruce unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:spruce_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~ ~-1 if block ~ ~ ~ #timber:spruce unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:spruce_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~ ~1 ~ if block ~ ~ ~ #timber:spruce unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:spruce_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~ ~1 ~1 if block ~ ~ ~ #timber:spruce unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:spruce_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~ ~1 ~-1 if block ~ ~ ~ #timber:spruce unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:spruce_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~1 ~1 ~ if block ~ ~ ~ #timber:spruce unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:spruce_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~1 ~1 ~1 if block ~ ~ ~ #timber:spruce unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:spruce_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~1 ~1 ~-1 if block ~ ~ ~ #timber:spruce unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:spruce_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~1 ~ if block ~ ~ ~ #timber:spruce unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:spruce_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~1 ~1 if block ~ ~ ~ #timber:spruce unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:spruce_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~1 ~-1 if block ~ ~ ~ #timber:spruce unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:spruce_tree/validate