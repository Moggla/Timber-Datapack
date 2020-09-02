# Loop
execute if score slow_chop timber matches 1.. run schedule function timber:slow_chop/loop 1t replace

scoreboard players add t_b_c timber 1

# chop trees
execute if score t_b_c timber >= time_between_chops timber at @e[type=minecraft:area_effect_cloud,tag=timber_slow_chop] run function timber:slow_chop/destroy_loop

# delete tree markers after chopping
execute if score t_b_c timber >= time_between_chops timber unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy] run function timber:slow_chop/delete_markers

execute if score t_b_c timber >= time_between_chops timber run scoreboard players set t_b_c timber 0