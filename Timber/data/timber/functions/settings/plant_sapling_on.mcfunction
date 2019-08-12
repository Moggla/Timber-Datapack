scoreboard players set plant_sapling timber 1
playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.9 .2
tellraw @s ["",{"text":"This setting requires a reload.\nReloading...","color":"yellow"}]
reload
# Show refreshed settings after reload (schedule forgets @s so I tag him to find him)
tag @s add timber_schedule
schedule function timber:settings/settings_schedule 1s
gamerule sendCommandFeedback false