# options which exclude each other: the one that was just enabled wins
execute if score slow_chop timber matches 1 if score drop_loot timber matches 1 if score #old_drop_loot timber matches 1 run scoreboard players set drop_loot timber 0
execute if score slow_chop timber matches 1 if score drop_loot timber matches 1 unless score #old_drop_loot timber matches 1 run scoreboard players set slow_chop timber 0
execute if score stop_chopping timber matches 1 run scoreboard players set wear_out timber 1

# start optional loops
execute if score slow_chop timber matches 1 unless score #old_slow_chop timber matches 1 run function timber:slow_chop/loop
execute if score plant_sapling timber matches 1 unless score #old_plant_sapling timber matches 1 run function timber:autoplant/loop
