# destroy loop
execute store result storage timber:slow_chop blocks_per_chop int 1 run scoreboard players get blocks_per_chop timber
execute store result storage timber:slow_chop time_between_chops int 1 run scoreboard players get time_between_chops timber
execute if score slow_chop timber matches 1.. run function timber:slow_chop/destroy_loop with storage timber:slow_chop
