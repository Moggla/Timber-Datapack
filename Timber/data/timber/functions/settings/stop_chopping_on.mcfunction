execute if score wear_out timber matches 1.. run tellraw @s ["",{"text":"\"Stop Chopping Once Axe Breaks\" can't be enabled when \"Additionally Wear out Tool Depending on Tree Size\" is disabled.","color":"yellow"}]
execute unless score wear_out timber matches 1.. run scoreboard players set stop_chopping timber 0
execute unless score wear_out timber matches 1.. run tellraw @s ["",{"text":"Stop Chopping Once Axe Breaks "},{"text":"enabled","color":"green"},{"text":"."}]
gamerule sendCommandFeedback false