### Enchantments randomizer ###
summon area_effect_cloud ~ ~ ~ {Tags:["timber_randomizer","1"],Duration:40}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_randomizer"],Duration:40}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:2s}]}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_randomizer"],Duration:40}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:2s}]}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_randomizer"],Duration:40}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:3s}]}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_randomizer"],Duration:40}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:3s}]}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_randomizer"],Duration:40}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:3s}]}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_randomizer"],Duration:40}

### get durability ###
execute store result score durability timber run data get entity @s SelectedItem.tag.Damage
scoreboard players remove durability timber 1

### chop tree by the fresh chopped log ###
execute at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:acacia_log"}}] run function timber:acacia_tree/durability_check
execute at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:acacia_wood"}}] run function timber:acacia_tree/durability_check
execute at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:birch_log"}}] run function timber:birch_tree/durability_check
execute at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:birch_wood"}}] run function timber:birch_tree/durability_check
execute at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:dark_oak_log"}}] run function timber:dark_oak_tree/durability_check
execute at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:dark_oak_wood"}}] run function timber:dark_oak_tree/durability_check
execute at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:jungle_log"}}] run function timber:jungle_tree/durability_check
execute at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:jungle_wood"}}] run function timber:jungle_tree/durability_check
execute at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:oak_log"}}] run function timber:oak_tree/durability_check
execute at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:oak_wood"}}] run function timber:oak_tree/durability_check
execute at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:spruce_log"}}] run function timber:spruce_tree/durability_check
execute at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:spruce_wood"}}] run function timber:spruce_tree/durability_check

### wear out tool ###
execute unless score wear_out timber matches 1.. store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get durability timber

### break axe if worn out ###
execute unless score wear_out timber matches 1.. if score @s t_wooden_axe matches 1.. if score durability timber matches 59.. run replaceitem entity @s weapon.mainhand minecraft:air
execute unless score wear_out timber matches 1.. if score @s t_wooden_axe matches 1.. if score durability timber matches 59.. run playsound minecraft:entity.item.break player @a ~ ~ ~
execute unless score wear_out timber matches 1.. if score @s t_stone_axe matches 1.. if score durability timber matches 131.. run replaceitem entity @s weapon.mainhand minecraft:air
execute unless score wear_out timber matches 1.. if score @s t_stone_axe matches 1.. if score durability timber matches 131.. run playsound minecraft:entity.item.break player @a ~ ~ ~
execute unless score wear_out timber matches 1.. if score @s t_iron_axe matches 1.. if score durability timber matches 250.. run replaceitem entity @s weapon.mainhand minecraft:air
execute unless score wear_out timber matches 1.. if score @s t_iron_axe matches 1.. if score durability timber matches 250.. run playsound minecraft:entity.item.break player @a ~ ~ ~
execute unless score wear_out timber matches 1.. if score @s t_golden_axe matches 1.. if score durability timber matches 32.. run replaceitem entity @s weapon.mainhand minecraft:air
execute unless score wear_out timber matches 1.. if score @s t_golden_axe matches 1.. if score durability timber matches 32.. run playsound minecraft:entity.item.break player @a ~ ~ ~
execute unless score wear_out timber matches 1.. if score @s t_diamond_axe matches 1.. if score durability timber matches 1561.. run replaceitem entity @s weapon.mainhand minecraft:air
execute unless score wear_out timber matches 1.. if score @s t_diamond_axe matches 1.. if score durability timber matches 1561.. run playsound minecraft:entity.item.break player @a ~ ~ ~

### remove randomizer ###
kill @e[tag=timber_randomizer]