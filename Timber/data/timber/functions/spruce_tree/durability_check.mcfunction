### optional skip ###
execute if score stop_chopping timber matches 1.. run function timber:spruce_tree/chop

### check if axe is broken ###
execute unless score stop_chopping timber matches 1.. if score @s t_wooden_axe matches 1.. if score durability timber matches ..58 run function timber:spruce_tree/chop
execute unless score stop_chopping timber matches 1.. if score @s t_stone_axe matches 1.. if score durability timber matches ..130 run function timber:spruce_tree/chop
execute unless score stop_chopping timber matches 1.. if score @s t_iron_axe matches 1.. if score durability timber matches ..249 run function timber:spruce_tree/chop
execute unless score stop_chopping timber matches 1.. if score @s t_golden_axe matches 1.. if score durability timber matches ..31 run function timber:spruce_tree/chop
execute unless score stop_chopping timber matches 1.. if score @s t_diamond_axe matches 1.. if score durability timber matches ..1560 run function timber:spruce_tree/chop