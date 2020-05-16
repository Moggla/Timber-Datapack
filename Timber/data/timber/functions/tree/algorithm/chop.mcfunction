#> resets
scoreboard players set durability_okay timber 1

#> keep track of tree size
scoreboard players add tree_size timber 1

#> wear out tool
function timber:tool/durability_count

#> mark block that will get destroyed
summon area_effect_cloud ~ ~ ~ {Tags:["timber_destroy"],Duration:2147483647}

#> tool durability check
function timber:tool/durability_check

#> search for next log
execute if score durability_okay timber matches 1.. if score tree_size timber < max_tree_size timber run function timber:tree/algorithm/search

#> destroy leaves
execute unless score destroy_leaves timber matches 1.. run scoreboard players set leaf_distance timber 0
execute unless score destroy_leaves timber matches 1.. run function timber:tree/algorithm/leaves/search