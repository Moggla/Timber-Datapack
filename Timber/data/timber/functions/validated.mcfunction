### reset ###
scoreboard players set tree_size timber 0

### Enchantments randomizer ###
summon area_effect_cloud ~ ~ ~ {Tags:["timber_randomizer","1"],Duration:2}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_randomizer"],Duration:2}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:2s}]}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_randomizer"],Duration:2}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:2s}]}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_randomizer"],Duration:2}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:3s}]}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_randomizer"],Duration:2}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:3s}]}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_randomizer"],Duration:2}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:3s}]}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_randomizer"],Duration:2}

### get durability ###
execute store result score durability timber run data get entity @s SelectedItem.tag.Damage
scoreboard players remove durability timber 1

### chop tree by the fresh chopped log ###
function timber:chop

### tp last drop loot into invertory ###
execute if score drop_loot timber matches 1.. run function timber:tp

### wear out tool ###
execute unless score wear_out timber matches 1.. store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get durability timber

### break axe if worn out ###
execute unless score wear_out timber matches 1.. run function timber:worn_out

### remove randomizer ###
kill @e[tag=timber_randomizer]