# if any axe is used - sadly this is buggy :(
#execute as @a[tag=!global.ignore] store success score axe timber if score @s timber_w_axe matches 0 if score @s timber_s_axe matches 0 if score @s timber_i_axe matches 0 if score @s timber_g_axe matches 0 if score @s timber_d_axe matches 0 if score @s timber_n_axe matches 0
#execute as @a[tag=!global.ignore] if score axe timber matches 0 run function timber:axe

# if axe is used
execute as @a[scores={timber_w_axe=1..}] at @s run function timber:axe
execute as @a[scores={timber_s_axe=1..}] at @s run function timber:axe
execute as @a[scores={timber_i_axe=1..}] at @s run function timber:axe
execute as @a[scores={timber_g_axe=1..}] at @s run function timber:axe
execute as @a[scores={timber_d_axe=1..}] at @s run function timber:axe
execute as @a[scores={timber_n_axe=1..}] at @s run function timber:axe

# toggle timber datapack per player
execute as @a[scores={TimberToggle=1..},tag=!global.ignore] run function timber:settings/toggle/timber

# reset
scoreboard players enable @a TimberToggle