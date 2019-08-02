scoreboard players set wear_out timber 1
tellraw @s ["",{"text":"Additionally Wear out Tool Depending on Tree Size "},{"text":"disabled","color":"red"},{"text":"."}]
gamerule sendCommandFeedback false
execute unless score stop_chopping timber matches 1.. run tellraw @s ["",{"text":"\"Stop Chopping Once Axe Breaks\" must be disabled too when \"Additionally Wear out Tool Depending on Tree Size\" is disabled.","color":"yellow"}]
execute unless score stop_chopping timber matches 1.. run function timber:settings/stop_chopping_off