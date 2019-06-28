scoreboard players set wear_out timber 1
tellraw @s ["",{"text":"Additionally Wear out Tool Depending on Tree Size "},{"text":"disabled","color":"red"},{"text":"."}]
gamerule sendCommandFeedback false
function timber:settings/stop_chopping_off