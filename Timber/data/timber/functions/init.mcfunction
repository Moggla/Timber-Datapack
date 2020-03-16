#> longer maxCommandChainLength
gamerule maxCommandChainLength 1000000000

#> create scoreboards
scoreboard objectives add timber_w_axe minecraft.used:minecraft.wooden_axe
scoreboard objectives add timber_s_axe minecraft.used:minecraft.stone_axe
scoreboard objectives add timber_i_axe minecraft.used:minecraft.iron_axe
scoreboard objectives add timber_g_axe minecraft.used:minecraft.golden_axe
scoreboard objectives add timber_d_axe minecraft.used:minecraft.diamond_axe
#scoreboard objectives add timber_n_axe minecraft.used:minecraft.netherite_axe
scoreboard objectives add timber dummy

#> constants
scoreboard players set 100 timber 100

#> non-overriding default values
execute unless score max_tree_size timber matches 1.. run scoreboard players set min_leaves_found timber 5
execute unless score max_tree_size timber matches 1.. run scoreboard players set max_tree_size timber 555

#> run 2s clock for auto plant
execute if score plant_sapling timber matches 1.. run function timber:autoplant/plant_loop

#> installation message
tellraw @a [{"text":"Timber Datapack V13 installed!","color":"dark_green"},{"text":"\n[click here to check for new updates]","color":"gold","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/timber-datapack/"}}]