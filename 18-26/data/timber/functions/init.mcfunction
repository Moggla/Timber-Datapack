# longer maxCommandChainLength
gamerule maxCommandChainLength 1000000000

# create scoreboards
scoreboard objectives add timber_w_axe minecraft.used:minecraft.wooden_axe
scoreboard objectives add timber_s_axe minecraft.used:minecraft.stone_axe
scoreboard objectives add timber_i_axe minecraft.used:minecraft.iron_axe
scoreboard objectives add timber_g_axe minecraft.used:minecraft.golden_axe
scoreboard objectives add timber_d_axe minecraft.used:minecraft.diamond_axe
scoreboard objectives add timber_n_axe minecraft.used:minecraft.netherite_axe
scoreboard objectives add timber dummy
scoreboard objectives add TimberToggle trigger {"text":"Timber Toggle","color":"#724E21"}
scoreboard objectives add timber_disabled dummy
scoreboard objectives add timber_prsistent dummy

# non-overriding default values
function timber:settings/default_values
scoreboard players set running timber 0

# start optional loops
execute if score plant_sapling timber matches 1.. run function timber:autoplant/loop
execute if score slow_chop timber matches 1.. run function timber:slow_chop/loop

# check loottable compatibility of mushroom stem
setblock ~ 255 ~ minecraft:chest
setblock ~ 255 ~1 minecraft:mushroom_stem
loot insert ~ 255 ~ mine ~ 255 ~1 minecraft:diamond_axe
execute unless data block ~ 255 ~ Items[{id:"minecraft:knowledge_book"}] run tellraw @a[tag=!noTimberWarning] ["",{"text":"Timber Datapack Warning: ","color":"red"},{"text":"Incompatibility with the mushroom_stem loottable of another datapack!"}]
fill ~-1 255 ~-1 ~1 255 ~1 minecraft:air
execute store result score doTileDrops timber run gamerule doTileDrops
execute if score doTileDrops timber matches 0 run tellraw @a[tag=!noTimberWarning] ["",{"text":"Timber Datapack Warning: ","color":"red"},{"text":"This datapack only works when gamerule doTileDrops is set to true!"}]

# Getting the game version and checking if it is compatible with the datapack https://minecraft.fandom.com/wiki/Data_version
execute store result score game_version timber run data get entity @r DataVersion
execute if score game_version timber matches ..3442 run tellraw @a[tag=!noTimberWarning] ["",{"text":"Timber Datapack Warning: ","color":"red"},{"text":"This datapack is not compatible with all the versions before 1.20!"}]

# Checking if the server uses a different jar from the vanilla one
function timber:utils/check_server