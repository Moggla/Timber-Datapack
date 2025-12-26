# function didn't end successfully
execute if score running timber matches 1 run scoreboard players set running timber 2
# normal behavior
execute if score running timber matches 0 run scoreboard players set running timber 1
execute if score running timber matches 1 run function timber:utils/used_axe
# function didn't end successfully
execute if score running timber matches 2 run execute store result storage timber:max_command_chain_length value int 1 run gamerule maxCommandChainLength
execute if score running timber matches 2 run tellraw @a[tag=!noTimberWarning] ["",{text:"Timber Datapack Warning: ",color:"red"},{text:"The datapack wasn't able to finish its functionality to work properly!"},{text:"\n ─ Please either decrease setting \"Max. Tree Size\" with "},{text:"\n [ ✎ ]",color:"gray",click_event:{action:"suggest_command",command:"/scoreboard players set max_tree_size timber "},hover_event:{action:"show_text",value:"Default: 555"}},{text:" (Currently: ",color:"gray"},{"score":{"name":"max_tree_size","objective":"timber"},color:"gray"},{text: ")",color:"gray"},{text:"."},{text:"\n ─ Or increase the gamerule \"maxCommandChainLength\" with "},{text:"\n [ ✎ ]",color:"gray",click_event:{action:"suggest_command",command:"/gamerule maxCommandChainLength "},hover_event:{action:"show_text",value:"Default: 65536"}},{text:" (Currently: ",color:"gray"},{nbt:"value",storage:"timber:max_command_chain_length",color:"gray"},{text: ")",color:"gray"},{text:"."}]
execute if score running timber matches 2 run schedule function timber:utils/reset 10t
execute if score running timber matches 2 run scoreboard players set running timber 3

# function ended successfully
execute if score running timber matches 1 run scoreboard players set running timber 0