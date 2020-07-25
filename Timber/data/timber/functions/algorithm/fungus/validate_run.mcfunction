#> validate tree if it's a log
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["timber_log"]}
data modify entity @e[type=minecraft:armor_stand,tag=timber_log,distance=...1,sort=arbitrary,limit=1] HandItems[0] set from entity @e[distance=...1,type=minecraft:item,tag=!global.ignore,sort=nearest,limit=1,nbt={Age:0s}] Item
execute as @e[type=minecraft:armor_stand,tag=timber_log,distance=...1,sort=arbitrary,limit=1] if predicate timber:item/stem run function timber:algorithm/fungus/validate