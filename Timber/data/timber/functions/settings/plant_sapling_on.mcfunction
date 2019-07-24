scoreboard players set plant_sapling timber 1
tellraw @s ["",{"text":"Auto Plant Saplings "},{"text":"enabled","color":"green"},{"text":"."}]
tellraw @s ["",{"text":"This setting requires a ","color":"yellow"},{"text":"/reload","color":"yellow","clickEvent":{"action":"run_command","value":"/reload"}}]
gamerule sendCommandFeedback false