# is this axe enabled?
execute unless score @s timber_disabled matches 1.. if score @s timber_w_axe matches 1.. if score wooden_axe timber matches 1.. run function timber:sneaking
execute unless score @s timber_disabled matches 1.. if score @s timber_s_axe matches 1.. if score stone_axe timber matches 1.. run function timber:sneaking
execute unless score @s timber_disabled matches 1.. if score @s timber_i_axe matches 1.. if score iron_axe timber matches 1.. run function timber:sneaking
execute unless score @s timber_disabled matches 1.. if score @s timber_g_axe matches 1.. if score golden_axe timber matches 1.. run function timber:sneaking
execute unless score @s timber_disabled matches 1.. if score @s timber_d_axe matches 1.. if score diamond_axe timber matches 1.. run function timber:sneaking
execute unless score @s timber_disabled matches 1.. if score @s timber_n_axe matches 1.. if score netherite_axe timber matches 1.. run function timber:sneaking

# remove mushroom_stem marker
kill @e[type=minecraft:item,distance=..7,nbt={Item:{tag:{Tags:[timber_location]}}}]

# reset scores
scoreboard players set @s timber_w_axe 0
scoreboard players set @s timber_s_axe 0
scoreboard players set @s timber_i_axe 0
scoreboard players set @s timber_g_axe 0
scoreboard players set @s timber_d_axe 0
scoreboard players set @s timber_n_axe 0