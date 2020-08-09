# wear out tool
setblock ~ 255 ~ minecraft:yellow_shulker_box
data modify block ~ 255 ~ Items append from entity @s SelectedItem
execute store result block ~ 255 ~ Items[0].tag.Damage int 1 run scoreboard players get durability timber
loot replace entity @s weapon.mainhand 1 mine ~ 255 ~ minecraft:air{drop_contents:1b}
setblock ~ 255 ~ minecraft:air
# execute store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get durability timber