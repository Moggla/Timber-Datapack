# check if item is a stem
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["timber_item_check"]}
data modify entity @e[type=minecraft:armor_stand,tag=timber_item_check,distance=...1,sort=arbitrary,limit=1] HandItems[0] set from entity @e[distance=...1,type=minecraft:item,sort=nearest,limit=1,nbt={Age:0s}] Item
execute if entity @e[type=minecraft:armor_stand,tag=timber_item_check,distance=...1,sort=arbitrary,limit=1,predicate=timber:item/stem] run function timber:algorithm/fungus/chop
kill @e[type=minecraft:armor_stand,tag=timber_item_check,distance=...1,sort=arbitrary,limit=1]