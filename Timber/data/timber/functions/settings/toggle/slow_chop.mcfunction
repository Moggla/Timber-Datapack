execute if score slow_chop timber matches 1.. run scoreboard players set slow_chop timber 2
execute unless score slow_chop timber matches 1.. run scoreboard players set slow_chop timber 1
execute if score slow_chop timber matches 2.. run scoreboard players set slow_chop timber 0

execute if score slow_chop timber matches 0 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.3 .2
execute if score slow_chop timber matches 0 run function timber:settings/settings1

execute if score slow_chop timber matches 1 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.9 .2
# Show refreshed settings after reload (schedule forgets @s so I tag him to find him)
execute if score slow_chop timber matches 1 run tag @s add timber_settings1
execute if score slow_chop timber matches 1 run function timber:settings/settings_reload

schedule function timber:settings/reset_gamerule 1t
gamerule sendCommandFeedback false