#> search for sapling on ground
# Vanilla
execute as @e at @s if predicate timber:acacia run function timber:autoplant/plant
execute as @e at @s if predicate timber:birch run function timber:autoplant/plant
execute as @e at @s if predicate timber:dark_oak run function timber:autoplant/plant
execute as @e at @s if predicate timber:jungle run function timber:autoplant/plant
execute as @e at @s if predicate timber:oak run function timber:autoplant/plant
execute as @e at @s if predicate timber:spruce run function timber:autoplant/plant

# Custom trees
function timber_custom_trees:autoplant/search_sapling_custom