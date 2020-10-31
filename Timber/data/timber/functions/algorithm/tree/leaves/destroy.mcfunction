# get leaf distance (in score leaf_distance timber)
function timber:algorithm/tree/leaves/get_distance

# decide if leaf is closer to the current tree then mark it so that it will get destroyed
execute if score leaf_distance_old timber < leaf_distance timber run summon area_effect_cloud ~ ~ ~ {Tags:["timber_leaf"],Duration:2147483647}

# search for next leaf
execute if score leaf_distance_old timber < leaf_distance timber run function timber:algorithm/tree/leaves/search