#> Destroy 1 block
execute as @e[type=minecraft:armor_stand,tag=timber_tool,y=0,distance=...1,sort=arbitrary,limit=1] at @e[type=minecraft:area_effect_cloud,tag=timber_destroy,sort=nearest,limit=1] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
# destroy animation
gamerule doTileDrops false
execute at @e[type=minecraft:area_effect_cloud,tag=timber_destroy,sort=nearest,limit=1] run setblock ~ ~ ~ minecraft:air destroy
gamerule doTileDrops true
# kill marker of processed blocks
kill @e[type=minecraft:area_effect_cloud,tag=timber_destroy,sort=nearest,limit=1]

scoreboard players add b_p_c timber 1