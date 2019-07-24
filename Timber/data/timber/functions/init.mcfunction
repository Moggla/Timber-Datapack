### create scoreboard ###
scoreboard objectives add t_wooden_axe minecraft.used:minecraft.wooden_axe
scoreboard objectives add t_stone_axe minecraft.used:minecraft.stone_axe
scoreboard objectives add t_iron_axe minecraft.used:minecraft.iron_axe
scoreboard objectives add t_golden_axe minecraft.used:minecraft.golden_axe
scoreboard objectives add t_diamond_axe minecraft.used:minecraft.diamond_axe

scoreboard objectives add t_sneak_time minecraft.custom:minecraft.sneak_time

scoreboard objectives add timber dummy

### run 10s clock for auto plant ###
execute if score plant_sapling timber matches 1.. run schedule function timber:main10s 10s

### non-overriding default values ###
execute unless score max_tree_size timber matches 1.. run scoreboard players set min_leaves_found timber 5
execute unless score max_tree_size timber matches 1.. run scoreboard players set max_tree_size timber 555

### installation message ###
tellraw @a [{"text":"Timber Datapack V8 installed!","color":"dark_green"},{"text":"\n[click here to check for new updates]","color":"gold","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/mod/timber-datapack/"}}]