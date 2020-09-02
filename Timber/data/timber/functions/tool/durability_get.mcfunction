execute if score tree_type timber matches 0 store result score durability timber run data get entity @s SelectedItem.tag.Damage
execute if score tree_type timber matches 0 run scoreboard players remove durability timber 1
execute if score tree_type timber matches 0 if entity @s[nbt=!{SelectedItem:{}}] run scoreboard players set durability timber 9999