# don't check items twice (except saplings, look in plant.mcfunction)
tag @s add timber_checked

# search for sapling on ground
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["timber_sapling"]}
data modify entity @e[type=minecraft:armor_stand,tag=timber_sapling,distance=...1,sort=arbitrary,limit=1] HandItems[0] set from entity @s Item
execute store success score @s timber as @e[type=minecraft:armor_stand,tag=timber_sapling,distance=...1,sort=arbitrary,limit=1] if predicate timber:item/sapling
execute if score @s timber matches 1.. run function timber:autoplant/plant
scoreboard players reset @s timber
kill @e[type=minecraft:armor_stand,tag=timber_sapling,distance=...1,sort=arbitrary,limit=1]