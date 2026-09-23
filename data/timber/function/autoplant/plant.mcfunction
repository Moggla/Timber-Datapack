# replace item-sapling with block-sapling   (special case for mud, because fallingblock get destroyed. 0.125 is the height when you sink into the mud)
execute if block ~ ~ ~ minecraft:mud run summon marker ~ ~ ~ {Tags:["timber_mud","global.ignore"]}
execute if block ~ ~ ~ minecraft:mud run schedule function timber:autoplant/mud_fix 1t
execute if block ~ ~ ~ minecraft:mud run setblock ~ ~ ~ minecraft:muddy_mangrove_roots
# same for farmland (a bit lower than a full block, the falling block would land inside of it): a dirt block for a moment, so the falling block has something to land on. The marker remembers the moisture, farmland_fix sets it again
execute if block ~ ~ ~ minecraft:farmland[moisture=0] run summon marker ~ ~ ~ {Tags:["timber_farmland","timber_moisture_0","global.ignore"]}
execute if block ~ ~ ~ minecraft:farmland[moisture=1] run summon marker ~ ~ ~ {Tags:["timber_farmland","timber_moisture_1","global.ignore"]}
execute if block ~ ~ ~ minecraft:farmland[moisture=2] run summon marker ~ ~ ~ {Tags:["timber_farmland","timber_moisture_2","global.ignore"]}
execute if block ~ ~ ~ minecraft:farmland[moisture=3] run summon marker ~ ~ ~ {Tags:["timber_farmland","timber_moisture_3","global.ignore"]}
execute if block ~ ~ ~ minecraft:farmland[moisture=4] run summon marker ~ ~ ~ {Tags:["timber_farmland","timber_moisture_4","global.ignore"]}
execute if block ~ ~ ~ minecraft:farmland[moisture=5] run summon marker ~ ~ ~ {Tags:["timber_farmland","timber_moisture_5","global.ignore"]}
execute if block ~ ~ ~ minecraft:farmland[moisture=6] run summon marker ~ ~ ~ {Tags:["timber_farmland","timber_moisture_6","global.ignore"]}
execute if block ~ ~ ~ minecraft:farmland[moisture=7] run summon marker ~ ~ ~ {Tags:["timber_farmland","timber_moisture_7","global.ignore"]}
execute if block ~ ~ ~ minecraft:farmland run schedule function timber:autoplant/farmland_fix 3t
execute if block ~ ~ ~ minecraft:farmland run setblock ~ ~ ~ minecraft:dirt
summon minecraft:falling_block ~ ~0.125 ~ {BlockState:{Name:"minecraft:barrier"},Time:1,DropItem:0b,Tags:["timber_item_to_block"]}
execute positioned ~ ~0.125 ~ run data modify entity @e[type=minecraft:falling_block,tag=timber_item_to_block,distance=...1,sort=arbitrary,limit=1] BlockState.Name set from entity @s Item.id

# on stacks -1
execute store result score @s timber run data get entity @s Item.count
scoreboard players remove @s timber 1
execute if score @s timber matches ..0 run kill @s
execute if score @s timber matches 1.. store result entity @s Item.count byte 1 run scoreboard players get @s timber
scoreboard players reset @s timber
# cheap custom server fix
execute if score not_vanilla timber matches 1 run kill @s

# sapling will be checked every time
tag @s remove timber_checked