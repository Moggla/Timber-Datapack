#> Back to the default
scoreboard players set plant_sapling timber 0
# the loop schedules itself: the round that is still scheduled would run in the next batch
schedule clear timber:autoplant/loop
