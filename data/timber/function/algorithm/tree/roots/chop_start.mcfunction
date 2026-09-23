# a root on the way from the mined root to the trunk (start_chop_on_root)
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

# search upwards and sideways for the trunk, roots can run sideways for a long way before they reach it
execute if score durability_okay timber matches 1.. if score tree_size timber < max_tree_size timber run function timber:algorithm/tree/roots/search_start_1
# search for roots downwards
execute if score durability_okay timber matches 1.. if score tree_size timber < max_tree_size timber if score destroy_roots timber matches 1.. run function timber:algorithm/tree/roots/search_1
