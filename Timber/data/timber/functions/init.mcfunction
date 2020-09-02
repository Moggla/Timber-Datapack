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

# start optional loops
execute if score plant_sapling timber matches 1.. run function timber:autoplant/loop
execute if score slow_chop timber matches 1.. run function timber:slow_chop/loop

# check loottable compatibility of shulkerbox and mushroom stem
setblock ~ 255 ~ minecraft:chest
setblock ~ 255 ~1 minecraft:mushroom_stem
setblock ~ 255 ~-1 minecraft:yellow_shulker_box
loot insert ~ 255 ~-1 loot minecraft:blocks/anvil
loot insert ~ 255 ~ mine ~ 255 ~-1 minecraft:air{drop_contents:1b}
loot insert ~ 255 ~ mine ~ 255 ~1 minecraft:diamond_axe
execute unless data block ~ 255 ~ Items[{id:"minecraft:anvil"}] run tellraw @a ["",{"text":"Timber Datapack Warning: ","color":"red"},{"text":"Incompatibility with the shulkerbox loottable of another datapack!"}]
execute unless data block ~ 255 ~ Items[{id:"minecraft:knowledge_book"}] run tellraw @a ["",{"text":"Timber Datapack Warning: ","color":"red"},{"text":"Incompatibility with the mushroom_stem loottable of another datapack!"}]
fill ~-1 255 ~-1 ~1 255 ~1 minecraft:air
execute store result score doTileDrops timber run gamerule doTileDrops
execute if score doTileDrops timber matches 0 run tellraw @a ["",{"text":"Timber Datapack Warning: ","color":"red"},{"text":"This datapack only works when gamerule doTileDrops is set to true!"}]

# Getting the game version and checking if it is compatible with the datapack
execute store result score game_version timber run data get entity @r DataVersion
execute if score game_version timber matches ..2565 run tellraw @a ["",{"text":"Timber Datapack Warning: ","color":"red"},{"text":"This datapack is not compatible with all the versions before 1.16!"}]

    # Checking if the server uses a different jar from the vanilla one
    execute unless score not_vanilla timber matches 1.. store success score not_vanilla timber run data get entity @r "Spigot.ticksLived"
    execute unless score not_vanilla timber matches 1.. store success score not_vanilla timber run data get entity @r "Bukkit.updateLevel"
    execute unless score not_vanilla timber matches 1.. store success score not_vanilla timber run data get entity @r "Paper.SpawnReason"
    execute if score not_vanilla timber matches 1 run tellraw @a ["",{"text":"Timber Datapack Warning: ","color":"red"},{"text":"Compatibility in non-vanilla servers is not guaranteed! For more information please visit official download site.","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/timber-datapack/"}}]