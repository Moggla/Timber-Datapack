# don't check items twice (except saplings, look in plant.mcfunction)
tag @s add timber_checked

# check if item is in tag #minecraft:sapling
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["timber_item_check"]}
data modify entity @e[type=minecraft:armor_stand,tag=timber_item_check,distance=...1,sort=arbitrary,limit=1] HandItems[0] set from entity @s Item
execute if entity @e[type=minecraft:armor_stand,tag=timber_item_check,distance=...1,sort=arbitrary,limit=1,predicate=timber:item/sapling] run function timber:autoplant/plant
kill @e[type=minecraft:armor_stand,tag=timber_item_check,distance=...1,sort=arbitrary,limit=1]