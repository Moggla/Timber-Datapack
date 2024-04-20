#> Loop
execute if score plant_sapling timber matches 1.. run schedule function timber:autoplant/loop 2s replace
#> plant sapling process
execute as @e[type=minecraft:item,tag=!timber_checked,tag=!global.ignore,tag=!global.ignore.kill,sort=random,limit=20,nbt={OnGround:1b}] at @s if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ #timber:grow run function timber:autoplant/validate