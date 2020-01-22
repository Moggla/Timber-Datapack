#> get leaf distance (in score leaf_distance_old timber)
function timber:all_tree/get_leaf_distance

#> decide if leaf is closer to the current tree then mark it so that it will get destroyed
execute if score leaf_distance_old timber < leaf_distance timber run summon area_effect_cloud ~ ~ ~ {Tags:["timber_destroy","timber_leaf"],Duration:1}

#> search for next leaf
execute if score leaf_distance_old timber < leaf_distance timber run function timber:all_tree/leaves_search