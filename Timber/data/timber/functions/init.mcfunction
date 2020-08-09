# installation message
    tellraw @a [{"text":"Timber Datapack V15.1 installed!","color":"dark_green"},{"text":"\n[click here to check for new updates]","color":"gold","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/timber-datapack/"}}]

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

# non-overriding default values
    execute unless score min_leaves_found timber = min_leaves_found timber run scoreboard players set min_leaves_found timber 5
    execute unless score max_tree_size timber = max_tree_size timber run scoreboard players set max_tree_size timber 555
    execute unless score time_between_chops timber = time_between_chops timber run scoreboard players set time_between_chops timber 1
    execute unless score blocks_per_chop timber = blocks_per_chop timber run scoreboard players set blocks_per_chop timber 1

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
    execute unless data block ~ 255 ~ Items[{id:"minecraft:anvil"}] run tellraw @a [{"text":"Timber Datapack Warning: Incompatibility with the shulkerbox loottable of another datapack!","color":"red"}]
    execute unless data block ~ 255 ~ Items[{id:"minecraft:knowledge_book"}] run tellraw @a [{"text":"Timber Datapack Warning: Incompatibility with the mushroom_stem loottable of another datapack!","color":"red"}]
    fill ~-1 255 ~-1 ~1 255 ~1 minecraft:air

# Getting the game version and checking if it is compatible with the datapack
    execute store result score game_version timber run data get entity @r DataVersion
    execute if score game_version timber matches ..2565 run tellraw @a [{"text":"Timber Datapack Warning: This datapack is not compatible with all the versions before 1.16!","color":"red"}]

    # Checking if the server uses a different jar from the vanilla one
        execute if score not_vanilla timber matches 0 store success score not_vanilla timber run data get entity @r "Spigot.ticksLived"
        execute if score not_vanilla timber matches 0 store success score not_vanilla timber run data get entity @r "Bukkit.updateLevel"
        execute if score not_vanilla timber matches 0 store success score not_vanilla timber run data get entity @r "Paper.SpawnReason"
        execute if score not_vanilla timber matches 1 run tellraw @a [{"text":"Timber Datapack Warning: Compatibility in non-vanilla servers is not guaranteed! For more information please visit official download site.","color":"red","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/timber-datapack/"}}]