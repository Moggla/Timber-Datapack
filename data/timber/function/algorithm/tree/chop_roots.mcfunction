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

# search for next root, only sideways and downwards and never into a log: roots of trees next to each other touch,
# going up from a root would climb into the trunk of the neighbor and chop the whole forest
execute if score durability_okay timber matches 1.. if score tree_size timber < max_tree_size timber if score destroy_roots timber matches 1.. run function timber:algorithm/tree/roots/search_1