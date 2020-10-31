scoreboard players set unbreakable timber 0
execute store result score durability timber run data get entity @s SelectedItem.tag.Damage
scoreboard players remove durability timber 1
execute if entity @s[nbt=!{SelectedItem:{}}] run scoreboard players set durability timber 9999
execute if data entity @s SelectedItem.tag.Unbreakable run scoreboard players set unbreakable timber 1