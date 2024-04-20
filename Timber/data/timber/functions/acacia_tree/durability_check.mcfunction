#> optional skip
execute if score stop_chopping timber matches 1.. run function timber:acacia_tree/chop

#> check if axe is broken
execute unless score stop_chopping timber matches 1.. if score @s timber_w_axe matches 1.. if score durability timber matches ..58 run function timber:acacia_tree/chop
execute unless score stop_chopping timber matches 1.. if score @s timber_s_axe matches 1.. if score durability timber matches ..130 run function timber:acacia_tree/chop
execute unless score stop_chopping timber matches 1.. if score @s timber_i_axe matches 1.. if score durability timber matches ..249 run function timber:acacia_tree/chop
execute unless score stop_chopping timber matches 1.. if score @s timber_g_axe matches 1.. if score durability timber matches ..31 run function timber:acacia_tree/chop
execute unless score stop_chopping timber matches 1.. if score @s timber_d_axe matches 1.. if score durability timber matches ..1560 run function timber:acacia_tree/chop