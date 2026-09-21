scoreboard players set #sx timber_test 0
scoreboard players add #sz timber_test 1
tp @s ~-39 ~ ~1
# after the tp the position of this execution is still the old one, take the new one
return run execute at @s run function timber_test:scan_step
