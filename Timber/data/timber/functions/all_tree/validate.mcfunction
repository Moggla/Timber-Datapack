### keep track of tree size ###
scoreboard players add tree_size timber 1

### mark log that have been checked ###
summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:2}

### search for leaves and note it ###
execute positioned ~ ~ ~1 unless entity @e[tag=timber_checked,distance=...9,sort=nearest,limit=1] if block ~ ~ ~ #minecraft:leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute positioned ~ ~ ~-1 unless entity @e[tag=timber_checked,distance=...9,sort=nearest,limit=1] if block ~ ~ ~ #minecraft:leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute positioned ~1 ~ ~ unless entity @e[tag=timber_checked,distance=...9,sort=nearest,limit=1] if block ~ ~ ~ #minecraft:leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute positioned ~-1 ~ ~ unless entity @e[tag=timber_checked,distance=...9,sort=nearest,limit=1] if block ~ ~ ~ #minecraft:leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute positioned ~ ~1 ~ unless entity @e[tag=timber_checked,distance=...9,sort=nearest,limit=1] if block ~ ~ ~ #minecraft:leaves[persistent=false] run scoreboard players add leaves_found timber 1

### mark leaf that have been checked ###
execute positioned ~ ~ ~1 unless entity @e[tag=timber_checked,distance=...9,sort=nearest,limit=1] if block ~ ~ ~ #minecraft:leaves[persistent=false] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:2}
execute positioned ~ ~ ~-1 unless entity @e[tag=timber_checked,distance=...9,sort=nearest,limit=1] if block ~ ~ ~ #minecraft:leaves[persistent=false] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:2}
execute positioned ~1 ~ ~ unless entity @e[tag=timber_checked,distance=...9,sort=nearest,limit=1] if block ~ ~ ~ #minecraft:leaves[persistent=false] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:2}
execute positioned ~-1 ~ ~ unless entity @e[tag=timber_checked,distance=...9,sort=nearest,limit=1] if block ~ ~ ~ #minecraft:leaves[persistent=false] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:2}
execute positioned ~ ~1 ~ unless entity @e[tag=timber_checked,distance=...9,sort=nearest,limit=1] if block ~ ~ ~ #minecraft:leaves[persistent=false] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:2}

### goto next log ###
execute if score tree_size timber < max_tree_size timber positioned ~ ~1 ~ if block ~ ~ ~ #timber:all unless entity @e[tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:all_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~ ~1 ~1 if block ~ ~ ~ #timber:all unless entity @e[tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:all_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~ ~1 ~-1 if block ~ ~ ~ #timber:all unless entity @e[tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:all_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~1 ~1 ~ if block ~ ~ ~ #timber:all unless entity @e[tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:all_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~1 ~1 ~1 if block ~ ~ ~ #timber:all unless entity @e[tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:all_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~1 ~1 ~-1 if block ~ ~ ~ #timber:all unless entity @e[tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:all_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~1 ~ if block ~ ~ ~ #timber:all unless entity @e[tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:all_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~1 ~1 if block ~ ~ ~ #timber:all unless entity @e[tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:all_tree/validate
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~1 ~-1 if block ~ ~ ~ #timber:all unless entity @e[tag=timber_checked,distance=...9,sort=nearest,limit=1] run function timber:all_tree/validate