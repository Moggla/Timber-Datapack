# resets
scoreboard players set durability_okay timber 1

# keep track of tree size
scoreboard players add tree_size timber 1

# wear out tool
function timber:tool/durability_count

# tool durability check
execute if score stop_chopping timber matches 1.. unless score unbreakable timber matches 1 run function timber:tool/durability_check

# mark block that will get destroyed
execute if score durability_okay timber matches 1.. if score tree_size timber < max_tree_size timber run summon marker ~ ~ ~ {Tags:["timber_root"]}

# search for next log/root
execute if score durability_okay timber matches 1.. if score tree_size timber < max_tree_size timber run function timber:algorithm/tree/search_1