# resets
scoreboard players set durability_okay timber 1

# keep track of tree size
scoreboard players add tree_size timber 1

# wear out tool
function timber:tool/durability_count

# tool durability check
execute if score stop_chopping timber matches 1.. unless score unbreakable timber matches 1 run function timber:tool/durability_check

# mark leaf that have been checked
execute positioned ~ ~ ~1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaves_found,distance=...1,sort=nearest,limit=1] if predicate timber:block/leaf run summon area_effect_cloud ~ ~ ~ {Tags:["timber_leaves_found"],Duration:1}
execute positioned ~ ~ ~-1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaves_found,distance=...1,sort=nearest,limit=1] if predicate timber:block/leaf run summon area_effect_cloud ~ ~ ~ {Tags:["timber_leaves_found"],Duration:1}
execute positioned ~1 ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaves_found,distance=...1,sort=nearest,limit=1] if predicate timber:block/leaf run summon area_effect_cloud ~ ~ ~ {Tags:["timber_leaves_found"],Duration:1}
execute positioned ~-1 ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaves_found,distance=...1,sort=nearest,limit=1] if predicate timber:block/leaf run summon area_effect_cloud ~ ~ ~ {Tags:["timber_leaves_found"],Duration:1}
execute positioned ~ ~1 ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaves_found,distance=...1,sort=nearest,limit=1] if predicate timber:block/leaf run summon area_effect_cloud ~ ~ ~ {Tags:["timber_leaves_found"],Duration:1}
execute positioned ~ ~-1 ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaves_found,distance=...1,sort=nearest,limit=1] if predicate timber:block/leaf run summon area_effect_cloud ~ ~ ~ {Tags:["timber_leaves_found"],Duration:1}

# mark block that will get destroyed
execute if score durability_okay timber matches 1.. if score tree_size timber < max_tree_size timber run summon area_effect_cloud ~ ~ ~ {Tags:["timber_logs"],Duration:2147483647}

# search for next log
execute if score durability_okay timber matches 1.. if score tree_size timber < max_tree_size timber run function timber:algorithm/tree/search

# destroy leaves
execute if score destroy_leaves timber matches 1.. run scoreboard players set leaf_distance timber 0
execute if score destroy_leaves timber matches 1.. run function timber:algorithm/tree/leaves/search