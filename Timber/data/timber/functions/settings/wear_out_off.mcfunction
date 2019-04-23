scoreboard players set wear_out timber 1
tellraw @s ["",{"text":"Wear out Tool "},{"text":"disabled","color":"red"},{"text":"."}]
gamerule sendCommandFeedback false
function timber:settings/stop_chopping_off