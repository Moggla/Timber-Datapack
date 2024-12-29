scoreboard players set unbreakable timber 0
execute store result score durability timber run data get entity @s SelectedItem.components."minecraft:damage"
scoreboard players remove durability timber 1
execute if entity @s[nbt=!{SelectedItem:{}}] run scoreboard players set durability timber 2147483647
execute if data entity @s SelectedItem.components."minecraft:unbreakable" run scoreboard players set unbreakable timber 1