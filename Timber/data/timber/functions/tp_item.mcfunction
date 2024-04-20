# tp hand-broken loot into inventory
setblock ~ 255 ~ minecraft:yellow_shulker_box
data modify block ~ 255 ~ Items append from entity @e[type=minecraft:item,sort=nearest,limit=1] Item
kill @e[type=minecraft:item,sort=nearest,limit=1]
loot give @s mine ~ 255 ~ minecraft:air{drop_contents:1b}
setblock ~ 255 ~ minecraft:air