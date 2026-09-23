# opens the "Blocks per Chop" slider with the current value
# only reachable for admins, so the trigger gets enabled only for them
execute unless score slow_chop timber matches 1 run return run function timber:settings/locked/blocks
scoreboard players enable @s TimberSetBlocks
data modify storage timber:settings dialog set value {"type":"minecraft:notice","title":"Timber Settings / Blocks per Chop","external_title":"Timber Blocks per Chop","body":{"type":"minecraft:plain_message","contents":["",{"text":"Amount of blocks which get destroyed per chop.\nOnly used when \"Chop Slowly\" is enabled."},"\n\n",{"text":"Default: 1","color":"gray"}],"width":300},"inputs":[{"type":"minecraft:number_range","key":"blocks_per_chop","width":300,"label":["",{"text":"Set Amount of Destroyed Blocks per Chop","hover_event":{"action":"show_text","value":"Only used when \"Chop Slowly\" is enabled."}}],"start":1,"end":100,"step":1,"initial":1}],"can_close_with_escape":true,"pause":false,"after_action":"none","action":{"label":{"translate":"gui.back"},"width":300,"action":{"type":"minecraft:dynamic/run_command","template":"trigger TimberSetBlocks set 1$(blocks_per_chop)"}}}
execute store result storage timber:settings dialog.inputs[0].initial float 1 run scoreboard players get blocks_per_chop timber
function timber:settings/show with storage timber:settings
