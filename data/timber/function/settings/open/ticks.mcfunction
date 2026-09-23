# opens the "Ticks Between Chops" slider with the current value
# only reachable for admins, so the trigger gets enabled only for them
execute unless score slow_chop timber matches 1 run return run function timber:settings/locked/ticks
scoreboard players enable @s TimberSetTicks
data modify storage timber:settings dialog set value {"type":"minecraft:notice","title":"Timber Settings / Ticks Between Chops","external_title":"Timber Ticks Between Chops","body":{"type":"minecraft:plain_message","contents":["",{"text":"Time in ticks between two chops.\nOnly used when \"Chop Slowly\" is enabled."},"\n\n",{"text":"Default: 1","color":"gray"}],"width":300},"inputs":[{"type":"minecraft:number_range","key":"time_between_chops","width":300,"label":["",{"text":"Set Time in Ticks Between Chops","hover_event":{"action":"show_text","value":"Only used when \"Chop Slowly\" is enabled."}}],"start":1,"end":100,"step":1,"initial":1}],"can_close_with_escape":true,"pause":false,"after_action":"none","action":{"label":{"translate":"gui.back"},"width":300,"action":{"type":"minecraft:dynamic/run_command","template":"trigger TimberSetTicks set 1$(time_between_chops)"}}}
execute store result storage timber:settings dialog.inputs[0].initial float 1 run scoreboard players get time_between_chops timber
function timber:settings/show with storage timber:settings
