# Destroy 1 block
execute as @e[type=minecraft:armor_stand,tag=timber_tool,y=0,distance=...1,sort=arbitrary,limit=1] at @e[type=minecraft:area_effect_cloud,tag=timber_destroy,sort=nearest,limit=1] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
# destroy animation
gamerule doTileDrops false
execute at @e[type=minecraft:area_effect_cloud,tag=timber_destroy,sort=nearest,limit=1] run setblock ~ ~ ~ minecraft:air destroy
gamerule doTileDrops true
# stop sound
execute if score stopsound timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy,sort=nearest,limit=1] run stopsound @a[distance=..20,tag=!global.ignore,tag=!global.ignore.gui] block minecraft:block.grass.break
execute if score stopsound timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy,sort=nearest,limit=1] run stopsound @a[distance=..20,tag=!global.ignore,tag=!global.ignore.gui] block minecraft:block.wood.break
execute if score stopsound timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy,sort=nearest,limit=1] run stopsound @a[distance=..20,tag=!global.ignore,tag=!global.ignore.gui] block minecraft:block.wart_block.break
execute if score stopsound timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy,sort=nearest,limit=1] run stopsound @a[distance=..20,tag=!global.ignore,tag=!global.ignore.gui] block minecraft:block.shroomlight.break
execute if score stopsound timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy,sort=nearest,limit=1] run stopsound @a[distance=..20,tag=!global.ignore,tag=!global.ignore.gui] block minecraft:block.nether_wart.break
execute if score stopsound timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_destroy,sort=nearest,limit=1] run stopsound @a[distance=..20,tag=!global.ignore,tag=!global.ignore.gui] block minecraft:block.stem.break
# delete location item
execute at @e[type=minecraft:area_effect_cloud,tag=timber_destroy,sort=nearest,limit=1] run kill @e[type=minecraft:item,distance=..1,nbt={Item:{tag:{Tags:["timber_location"]}}}]
# remove marker of processed blocks
kill @e[type=minecraft:area_effect_cloud,tag=timber_destroy,sort=nearest,limit=1]

scoreboard players add b_p_c timber 1