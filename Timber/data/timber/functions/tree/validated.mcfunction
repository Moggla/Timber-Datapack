#> reset
# tree size reset again because second use
scoreboard players set tree_size timber 0

#> Enchantments randomizer
scoreboard players set unbreaking timber 0
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}}] run scoreboard players set unbreaking timber 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:2s}]}}}] run scoreboard players set unbreaking timber 2
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:3s}]}}}] run scoreboard players set unbreaking timber 3

#> get durability
execute store result score durability timber run data get entity @s SelectedItem.tag.Damage
scoreboard players remove durability timber 1

#> mark all blocks that will get destroyed
execute at @e[type=minecraft:area_effect_cloud,tag=timber_tree,tag=!timber_slow_chop,distance=..7,sort=arbitrary,limit=1] run function timber:tree/algorithm/chop

# when full inventory fix
execute if score drop_loot timber matches 1.. store result score inventory timber run data get entity @s Inventory
execute if score drop_loot timber matches 1.. if entity @s[nbt={Inventory:[{Slot:-100b}]}] run scoreboard players remove inventory timber 1
execute if score drop_loot timber matches 1.. if entity @s[nbt={Inventory:[{Slot:-101b}]}] run scoreboard players remove inventory timber 1
execute if score drop_loot timber matches 1.. if entity @s[nbt={Inventory:[{Slot:-102b}]}] run scoreboard players remove inventory timber 1
execute if score drop_loot timber matches 1.. if entity @s[nbt={Inventory:[{Slot:-103b}]}] run scoreboard players remove inventory timber 1
execute if score drop_loot timber matches 1.. if entity @s[nbt={Inventory:[{Slot:-106b}]}] run scoreboard players remove inventory timber 1

#> destroy all marked blocks
execute unless score slow_chop timber matches 1.. unless score drop_loot timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute unless score slow_chop timber matches 1.. if score drop_loot timber matches 1.. unless score inventory timber matches 36.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy] run loot give @s mine ~ ~ ~ mainhand
execute unless score slow_chop timber matches 1.. if score drop_loot timber matches 1.. if score inventory timber matches 36.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
# destroy animation
gamerule doTileDrops false
execute unless score slow_chop timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy] run setblock ~ ~ ~ minecraft:air destroy
gamerule doTileDrops true
# save tool for slow chopping process
execute if score slow_chop timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_tree,tag=!timber_slow_chop,distance=..7,sort=arbitrary,limit=1] run summon minecraft:armor_stand ~ 0 ~ {Invisible:1b,Marker:1b,Tags:["timber_tool"],Rotation:[45f],Pose:{RightArm:[0f,270f,0f]}}
execute if score slow_chop timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_tree,tag=!timber_slow_chop,distance=..7,sort=arbitrary,limit=1] run data modify entity @e[type=minecraft:armor_stand,tag=timber_tool,y=0,distance=...1,sort=arbitrary,limit=1] HandItems[0] merge from entity @s SelectedItem
execute if score slow_chop timber matches 1.. run tag @e[type=minecraft:area_effect_cloud,tag=timber_tree,tag=!timber_slow_chop,distance=..7,sort=arbitrary,limit=1] add timber_slow_chop

# tp hand-broken loot into inventory
execute if score drop_loot timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_tree,tag=!timber_slow_chop,distance=..7,sort=arbitrary,limit=1] run function timber:tree/tp_item

#> stop sound
execute if score stopsound timber matches 1.. run stopsound @a[distance=..20,tag=!global.ignore,tag=!global.ignore.gui] block minecraft:block.wood.break
execute if score stopsound timber matches 1.. run stopsound @a[distance=..20,tag=!global.ignore,tag=!global.ignore.gui] block minecraft:block.grass.break

#> wear out tool
execute unless score wear_out timber matches 1.. run function timber:tool/wear_out

#> break axe if worn out
execute unless score wear_out timber matches 1.. run function timber:tool/worn_out

#> remove markers
kill @e[type=minecraft:area_effect_cloud,tag=timber_leaf_distance]
execute unless score slow_chop timber matches 1.. run kill @e[type=minecraft:area_effect_cloud,tag=timber_destroy]