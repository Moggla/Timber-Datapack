# keep track of tree size
scoreboard players add tree_size timber 1

# mark log that have been checked
summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:1}

##### if on top
execute positioned ~ ~1 ~ unless predicate timber:block/stem run function timber:algorithm/fungus/validate_hat

# search for leaves and note it
execute positioned ~ ~ ~1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] if predicate timber:block/cap run scoreboard players add leaves_found timber 1
execute positioned ~ ~ ~-1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] if predicate timber:block/cap run scoreboard players add leaves_found timber 1
execute positioned ~1 ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] if predicate timber:block/cap run scoreboard players add leaves_found timber 1
execute positioned ~-1 ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] if predicate timber:block/cap run scoreboard players add leaves_found timber 1
execute positioned ~ ~1 ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] if predicate timber:block/cap run scoreboard players add leaves_found timber 1

# mark leaf that have been checked
execute positioned ~ ~ ~1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] if predicate timber:block/cap run summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:1}
execute positioned ~ ~ ~-1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] if predicate timber:block/cap run summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:1}
execute positioned ~1 ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] if predicate timber:block/cap run summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:1}
execute positioned ~-1 ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] if predicate timber:block/cap run summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:1}
execute positioned ~ ~1 ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] if predicate timber:block/cap run summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:1}

# goto next log
execute if score tree_size timber < max_tree_size timber positioned ~ ~2 ~ if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate

execute if score tree_size timber < max_tree_size timber positioned ~ ~1 ~ if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber positioned ~ ~1 ~1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber positioned ~ ~1 ~-1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber positioned ~1 ~1 ~ if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber positioned ~1 ~1 ~1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber positioned ~1 ~1 ~-1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~1 ~ if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~1 ~1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~1 ~-1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate

execute if score tree_size timber < max_tree_size timber positioned ~ ~ ~1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber positioned ~ ~ ~-1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber positioned ~1 ~ ~ if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber positioned ~1 ~ ~1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber positioned ~1 ~ ~-1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~ ~ if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~ ~1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~ ~-1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate

execute if score tree_size timber < max_tree_size timber if score chop_down timber matches 1.. positioned ~ ~-1 ~ if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber if score chop_down timber matches 1.. positioned ~ ~-1 ~1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber if score chop_down timber matches 1.. positioned ~ ~-1 ~-1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber if score chop_down timber matches 1.. positioned ~1 ~-1 ~ if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber if score chop_down timber matches 1.. positioned ~1 ~-1 ~1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber if score chop_down timber matches 1.. positioned ~1 ~-1 ~-1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber if score chop_down timber matches 1.. positioned ~-1 ~-1 ~ if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber if score chop_down timber matches 1.. positioned ~-1 ~-1 ~1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate
execute if score tree_size timber < max_tree_size timber if score chop_down timber matches 1.. positioned ~-1 ~-1 ~-1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] run function timber:algorithm/fungus/validate