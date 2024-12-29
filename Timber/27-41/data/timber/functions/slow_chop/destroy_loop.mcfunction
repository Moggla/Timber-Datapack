# destroy 5 block
execute unless score b_p_c timber matches ..4 run function timber:slow_chop/destroy5

# destroy 1 block
execute unless score b_p_c timber matches 5.. run function timber:slow_chop/destroy1

# loop
execute if score b_p_c timber < blocks_per_chop timber run function timber:slow_chop/destroy_loop
execute if score b_p_c timber >= blocks_per_chop timber run scoreboard players set b_p_c timber 0