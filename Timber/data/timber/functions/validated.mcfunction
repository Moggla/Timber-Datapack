# when full inventory fix
execute if score drop_loot timber matches 1.. store result score inventory timber run data get entity @s Inventory
execute if score drop_loot timber matches 1.. if entity @s[nbt={Inventory:[{Slot:-100b}]}] run scoreboard players remove inventory timber 1
execute if score drop_loot timber matches 1.. if entity @s[nbt={Inventory:[{Slot:-101b}]}] run scoreboard players remove inventory timber 1
execute if score drop_loot timber matches 1.. if entity @s[nbt={Inventory:[{Slot:-102b}]}] run scoreboard players remove inventory timber 1
execute if score drop_loot timber matches 1.. if entity @s[nbt={Inventory:[{Slot:-103b}]}] run scoreboard players remove inventory timber 1
execute if score drop_loot timber matches 1.. if entity @s[nbt={Inventory:[{Slot:-106b}]}] run scoreboard players remove inventory timber 1

# destroy blocks
    # mark blocks that need to be destroyed
    tag @e[type=minecraft:area_effect_cloud,tag=timber_logs] add timber_destroy
    tag @e[type=minecraft:area_effect_cloud,tag=timber_leaf] add timber_destroy
    tag @e[type=minecraft:area_effect_cloud,tag=timber_stem] add timber_destroy
    tag @e[type=minecraft:area_effect_cloud,tag=timber_cap] add timber_destroy
    # api
    execute unless score slow_chop timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_logs] run function #timber:api/break_log
    execute unless score slow_chop timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_leaf] run function #timber:api/break_leaf
    execute unless score slow_chop timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_stem] run function #timber:api/break_stem
    execute unless score slow_chop timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_cap] run function #timber:api/break_cap
    # loot
    execute unless score slow_chop timber matches 1.. unless score drop_loot timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
    execute unless score slow_chop timber matches 1.. if score drop_loot timber matches 1.. unless score inventory timber matches 36.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy] run loot give @s mine ~ ~ ~ mainhand
    execute unless score slow_chop timber matches 1.. if score drop_loot timber matches 1.. if score inventory timber matches 36.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
    # destroy animation
    gamerule doTileDrops false
    execute unless score slow_chop timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy] run setblock ~ ~ ~ minecraft:air destroy
    gamerule doTileDrops true
    # remove destroy marker
    execute unless score slow_chop timber matches 1.. run kill @e[type=minecraft:area_effect_cloud,tag=timber_destroy]

# stop sound
execute if score stopsound timber matches 1.. as @a[distance=..20,tag=!global.ignore.gui] run function timber:utils/stopsound

# save tool for slow chopping process
execute if score slow_chop timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_tree,tag=!timber_slow_chop,distance=..7,sort=arbitrary,limit=1] run summon minecraft:armor_stand ~ 0 ~ {Invisible:1b,Marker:1b,Tags:["timber_tool"],Rotation:[45f],Pose:{RightArm:[0f,270f,0f]}}
execute if score slow_chop timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_tree,tag=!timber_slow_chop,distance=..7,sort=arbitrary,limit=1] run data modify entity @e[type=minecraft:armor_stand,tag=timber_tool,y=0,distance=...1,sort=arbitrary,limit=1] HandItems[0] merge from entity @s SelectedItem
execute if score slow_chop timber matches 1.. run tag @e[type=minecraft:area_effect_cloud,tag=timber_tree,tag=!timber_slow_chop,distance=..7,sort=arbitrary,limit=1] add timber_slow_chop

# tp hand-broken loot into inventory
execute if score drop_loot timber matches 1.. unless score inventory timber matches 36.. at @e[type=minecraft:area_effect_cloud,tag=timber_tree,tag=!timber_slow_chop,distance=..7,sort=arbitrary,limit=1] run function timber:utils/tp_item

# wear out tool
execute if score wear_out timber matches 1.. unless score unbreakable timber matches 1 run function timber:tool/wear_out

# break axe if worn out
execute if score wear_out timber matches 1.. unless score unbreakable timber matches 1 run function timber:tool/worn_out

# give hunger effect
execute if score hunger timber matches 1.. run function timber:utils/hunger