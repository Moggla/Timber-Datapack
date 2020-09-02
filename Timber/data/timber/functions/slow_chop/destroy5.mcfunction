# api
execute as @e[type=minecraft:area_effect_cloud,tag=timber_destroy,sort=nearest,limit=5] at @s if entity @s[tag=timber_logs] run function #timber:api/break_log

# destroy 5 block
execute as @e[type=minecraft:armor_stand,tag=timber_tool,y=0,distance=...1,sort=arbitrary,limit=1] at @e[type=minecraft:area_effect_cloud,tag=timber_destroy,sort=nearest,limit=5] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand

# destroy animation
gamerule doTileDrops false
execute at @e[type=minecraft:area_effect_cloud,tag=timber_destroy,sort=nearest,limit=5] run setblock ~ ~ ~ minecraft:air destroy
gamerule doTileDrops true

# stop sound
execute if score stopsound timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy,sort=nearest,limit=5] as @a[distance=..20,tag=!global.ignore.gui] run function timber:utils/stopsound

# delete location item
execute at @e[type=minecraft:area_effect_cloud,tag=timber_destroy,sort=nearest,limit=1] run kill @e[type=minecraft:item,distance=..1,nbt={Item:{tag:{Tags:["timber_location"]}}}]

# remove marker of processed blocks
kill @e[type=minecraft:area_effect_cloud,tag=timber_destroy,sort=nearest,limit=5]

scoreboard players add b_p_c timber 5