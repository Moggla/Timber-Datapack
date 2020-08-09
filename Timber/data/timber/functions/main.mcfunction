# if any axe is used
execute as @a[tag=!global.ignore] store success score axe timber unless score @s timber_w_axe matches 1.. unless score @s timber_s_axe matches 1.. unless score @s timber_i_axe matches 1.. unless score @s timber_g_axe matches 1.. unless score @s timber_d_axe matches 1.. unless score @s timber_n_axe matches 1..
execute as @a[tag=!global.ignore] if score axe timber matches 0 run function timber:axe

# toggle timber datapack per player
execute as @a[scores={TimberToggle=1..},tag=!global.ignore] run function timber:settings/toggle/timber

# reset
gamerule sendCommandFeedback true
scoreboard players enable @a TimberToggle