#> reset
# tree size reset again because second use
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

# when full inventory fix
execute store result score inventory timber run data get entity @s Inventory
execute if entity @s[nbt={Inventory:[{Slot:-100b}]}] run scoreboard players remove inventory timber 1
execute if entity @s[nbt={Inventory:[{Slot:-101b}]}] run scoreboard players remove inventory timber 1
execute if entity @s[nbt={Inventory:[{Slot:-102b}]}] run scoreboard players remove inventory timber 1
execute if entity @s[nbt={Inventory:[{Slot:-103b}]}] run scoreboard players remove inventory timber 1
execute if entity @s[nbt={Inventory:[{Slot:-106b}]}] run scoreboard players remove inventory timber 1

#> destroy all marked blocks
execute unless score drop_loot timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if score drop_loot timber matches 1.. if score inventory timber matches 36.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if score drop_loot timber matches 1.. unless score inventory timber matches 36.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy] run loot give @s mine ~ ~ ~ mainhand
gamerule doTileDrops false
execute at @e[type=minecraft:area_effect_cloud,tag=timber_destroy] run setblock ~ ~ ~ minecraft:air destroy
gamerule doTileDrops true

# tp hand broken loot into inventory
execute if score drop_loot timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_tree,sort=nearest,limit=1] run setblock ~ 255 ~ minecraft:lime_shulker_box
execute if score drop_loot timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_tree,sort=nearest,limit=1] run data modify block ~ 255 ~ Items append from entity @e[type=minecraft:item,sort=nearest,limit=1] Item
execute if score drop_loot timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_tree,sort=nearest,limit=1] run kill @e[type=minecraft:item,sort=nearest,limit=1]
execute if score drop_loot timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_tree,sort=nearest,limit=1] run loot give @s mine ~ 255 ~ iron_pickaxe{ucit:{id:"inventory_modifier"}}
execute if score drop_loot timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_tree,sort=nearest,limit=1] run setblock ~ 255 ~ minecraft:air
# execute if score drop_loot timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_tree,sort=nearest,limit=1] run tp @e[type=minecraft:item,sort=nearest,limit=1] @s

#> stop sound
execute if score stopsound timber matches 1.. run stopsound @a[distance=..20] block minecraft:block.wood.break
execute if score stopsound timber matches 1.. run stopsound @a[distance=..20] block minecraft:block.grass.break

#> wear out tool
execute unless score wear_out timber matches 1.. run setblock ~ 255 ~ minecraft:lime_shulker_box
execute unless score wear_out timber matches 1.. run data modify block ~ 255 ~ Items append from entity @s SelectedItem
execute unless score wear_out timber matches 1.. store result block ~ 255 ~ Items[0].tag.Damage int 1 run scoreboard players get durability timber
execute unless score wear_out timber matches 1.. run loot replace entity @s weapon.mainhand 1 mine ~ 255 ~ iron_pickaxe{ucit:{id:"inventory_modifier"}}
execute unless score wear_out timber matches 1.. run setblock ~ 255 ~ minecraft:air
# execute unless score wear_out timber matches 1.. store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get durability timber

#> break axe if worn out
execute unless score wear_out timber matches 1.. run function timber:worn_out

#> remove markers
kill @e[type=minecraft:area_effect_cloud,tag=timber_leaf_distance]
kill @e[type=minecraft:area_effect_cloud,tag=timber_randomizer]
kill @e[type=minecraft:area_effect_cloud,tag=timber_checked]
kill @e[type=minecraft:area_effect_cloud,tag=timber_destroy]
kill @e[type=minecraft:area_effect_cloud,tag=timber_tree]