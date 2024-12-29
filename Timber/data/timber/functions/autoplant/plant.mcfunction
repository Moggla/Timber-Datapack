# replace item-sapling with block-sapling   (special case for mud, because fallingblock get destroyed. 0.125 is the height when you sink into the mud)
execute unless block ~ ~ ~ minecraft:air run summon marker ~ ~ ~ {Tags:["timber_mud","global.ignore"]}
execute unless block ~ ~ ~ minecraft:air run schedule function timber:autoplant/mud_fix 1t
execute unless block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:muddy_mangrove_roots
summon minecraft:falling_block ~ ~0.125 ~ {BlockState:{Name:"minecraft:barrier"},Time:1,DropItem:0b,Tags:["timber_item_to_block"]}
execute positioned ~ ~0.125 ~ run data modify entity @e[type=minecraft:falling_block,tag=timber_item_to_block,distance=...1,sort=arbitrary,limit=1] BlockState.Name set from entity @s Item.id

# on stacks -1
execute store result score @s timber run data get entity @s Item.count
scoreboard players remove @s timber 1
execute store result entity @s Item.count byte 1 run scoreboard players get @s timber
scoreboard players reset @s timber
# cheap custom server fix
execute if score not_vanilla timber matches 1 run kill @s

# sapling will be checked every time
tag @s remove timber_checked