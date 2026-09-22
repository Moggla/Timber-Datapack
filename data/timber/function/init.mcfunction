# longer minecraft:max_command_sequence_length
gamerule minecraft:max_command_sequence_length 1000000000

# create scoreboards
scoreboard objectives add timber dummy
scoreboard objectives add TimberToggle trigger {text:"Timber Toggle",color:"#724E21"}
scoreboard objectives add TimberSettings trigger {text:"Timber Settings",color:"#724E21"}
scoreboard objectives add TimberSetBlocks trigger
scoreboard objectives add TimberSetTicks trigger
scoreboard objectives add TimberSetTreeSize trigger
scoreboard objectives add TimberSetLeaves trigger
scoreboard objectives add timber_menu dummy
scoreboard objectives add timber_disabled dummy
scoreboard objectives remove timber_prsistent
scoreboard objectives add timber_persistent dummy

scoreboard players reset * TimberSettings
scoreboard players reset * TimberSetBlocks
scoreboard players reset * TimberSetTicks
scoreboard players reset * TimberSetTreeSize
scoreboard players reset * TimberSetLeaves

# non-overriding default values
function timber:settings/default_values

# axes (they are registered with the same function that is offered to other datapacks)
function timber:axes/init
scoreboard players set running timber 0

# start optional loops
execute if score plant_sapling timber matches 1.. run function timber:autoplant/loop
execute if score slow_chop timber matches 1.. run function timber:slow_chop/loop

# check loottable compatibility of mushroom stem
setblock ~ 255 ~ minecraft:chest
setblock ~ 255 ~1 minecraft:mushroom_stem
loot insert ~ 255 ~ mine ~ 255 ~1 minecraft:diamond_axe
execute unless data block ~ 255 ~ Items[{id:"minecraft:knowledge_book",components:{"minecraft:custom_data":{Tags:["timber_location"]}}}] run tellraw @a[tag=!noTimberWarning] ["",{text:"Timber Datapack Warning: ",color:"red"},{text:"Incompatibility with the mushroom_stem loottable of another datapack!"}]
fill ~-1 255 ~-1 ~1 255 ~1 minecraft:air
execute store result score block_drops timber run gamerule minecraft:block_drops
execute if score block_drops timber matches 0 run tellraw @a[tag=!noTimberWarning] ["",{text:"Timber Datapack Warning: ",color:"red"},{text:"This datapack only works when gamerule minecraft:block_drops is set to true!"}]

# Getting the game version and checking if it is compatible with the datapack https://minecraft.fandom.com/wiki/Data_version
execute store result score game_version timber run data get entity @r DataVersion
execute if score game_version timber matches ..4785 run tellraw @a[tag=!noTimberWarning] ["",{text:"Timber Datapack Warning: ",color:"red"},{text:"This datapack is not compatible with all the versions before 26.1!"}]

# Checking if the server uses a different jar from the vanilla one
function timber:utils/check_server
