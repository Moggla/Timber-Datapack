# replace item-sapling with block-sapling
summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:barrier"},Time:1,DropItem:0b,Tags:["timber_item_to_block"]}
data modify entity @e[type=minecraft:falling_block,tag=timber_item_to_block,distance=...1,sort=arbitrary,limit=1] BlockState.Name set from entity @s Item.id

# on stacks -1
execute store result score @s timber run data get entity @s Item.Count
scoreboard players remove @s timber 1
execute store result entity @s Item.Count byte 1 run scoreboard players get @s timber
scoreboard players reset @s timber
# cheap custom server fix
execute if score not_vanilla timber matches 1 run kill @s

# sapling will be checked every time
tag @s remove timber_checked