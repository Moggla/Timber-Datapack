# check if item is in tag #minecraft:logs
summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["timber_item_check"]}
data modify entity @e[type=minecraft:armor_stand,tag=timber_item_check,distance=...1,sort=arbitrary,limit=1] equipment.mainhand set from entity @e[type=minecraft:item,distance=...1,sort=nearest,limit=1,nbt={Age:0s}] Item
execute if entity @e[type=minecraft:armor_stand,tag=timber_item_check,distance=...1,sort=arbitrary,limit=1,predicate=timber:item/log] run function timber:algorithm/tree/chop
scoreboard players set root_walk timber 1
execute if score start_chop_on_root timber matches 1.. if entity @e[type=minecraft:armor_stand,tag=timber_item_check,distance=...1,sort=arbitrary,limit=1,predicate=timber:item/root] run function timber:algorithm/tree/roots/chop_start
kill @e[type=minecraft:armor_stand,tag=timber_item_check,distance=...1,sort=arbitrary,limit=1]
