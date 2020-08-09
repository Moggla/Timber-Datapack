# resets
scoreboard players set durability_okay timber 1

# keep track of tree size
scoreboard players add tree_size timber 1

# wear out tool
function timber:tool/durability_count

# tool durability check
execute unless score stop_chopping timber matches 1.. run function timber:tool/durability_check

# mark block that will get destroyed
execute if score durability_okay timber matches 1.. if score tree_size timber < max_tree_size timber run summon area_effect_cloud ~ ~ ~ {Tags:["timber_destroy"],Duration:2147483647}

# search for next log
execute if score durability_okay timber matches 1.. if score tree_size timber < max_tree_size timber run function timber:algorithm/fungus/search

# destroy leaves
execute unless score destroy_leaves timber matches 1.. run scoreboard players set leaf_distance timber 0
execute unless score destroy_leaves timber matches 1.. run function timber:algorithm/fungus/leaves/search