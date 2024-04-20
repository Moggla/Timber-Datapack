#> reset
# tree size reset, again because second use
scoreboard players set tree_size timber 0

#> Enchantments randomizer
summon area_effect_cloud ~ ~ ~ {Tags:["timber_randomizer","1"],Duration:1}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_randomizer"],Duration:1}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:2s}]}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_randomizer"],Duration:1}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:2s}]}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_randomizer"],Duration:1}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:3s}]}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_randomizer"],Duration:1}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:3s}]}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_randomizer"],Duration:1}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:3s}]}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_randomizer"],Duration:1}

#> get durability
execute store result score durability timber run data get entity @s SelectedItem.tag.Damage
scoreboard players remove durability timber 1

#> mark all blocks that will get destroyed
function timber:chop

# When full inventory fix
execute store result score inventory timber run data get entity @s Inventory
execute if entity @s[nbt={Inventory:[{Slot:-106b}]}] run scoreboard players remove inventory timber 1
execute if entity @s[nbt={Inventory:[{Slot:-100b}]}] run scoreboard players remove inventory timber 1
execute if entity @s[nbt={Inventory:[{Slot:-101b}]}] run scoreboard players remove inventory timber 1
execute if entity @s[nbt={Inventory:[{Slot:-102b}]}] run scoreboard players remove inventory timber 1
execute if entity @s[nbt={Inventory:[{Slot:-103b}]}] run scoreboard players remove inventory timber 1

#> destroy all marked blocks
execute if score inventory timber matches 36.. if score drop_loot timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute unless score inventory timber matches 36.. if score drop_loot timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy] run loot give @s mine ~ ~ ~ mainhand
execute if score drop_loot timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy] run setblock ~ ~ ~ minecraft:air replace
execute unless score drop_loot timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy] run setblock ~ ~ ~ minecraft:air destroy

#> stop sound
execute if score stopsound timber matches 1.. run stopsound @s block minecraft:block.wood.break
execute if score stopsound timber matches 1.. run stopsound @s block minecraft:block.grass.break

#> tp last drop loot into invertory
execute if score drop_loot timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_tree,sort=nearest,limit=1] run tp @e[type=minecraft:item,sort=nearest,limit=1] @s

#> wear out tool
execute unless score wear_out timber matches 1.. store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get durability timber

#> break axe if worn out
execute unless score wear_out timber matches 1.. run function timber:worn_out

#> remove markers
kill @e[type=minecraft:area_effect_cloud,tag=timber_leaf_distance]
kill @e[type=minecraft:area_effect_cloud,tag=timber_randomizer]
kill @e[type=minecraft:area_effect_cloud,tag=timber_checked]
kill @e[type=minecraft:area_effect_cloud,tag=timber_destroy]
kill @e[type=minecraft:area_effect_cloud,tag=timber_tree]