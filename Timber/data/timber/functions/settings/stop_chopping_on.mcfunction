execute if score wear_out timber matches 1.. run tellraw @s ["",{"text":"Can't be enabled when Wear out Tool is disabled."}]
execute unless score wear_out timber matches 1.. run scoreboard players set stop_chopping timber 0
execute unless score wear_out timber matches 1.. run tellraw @s ["",{"text":"Stop Chopping once Axe Breaks "},{"text":"enabled","color":"green"},{"text":"."}]
gamerule sendCommandFeedback false