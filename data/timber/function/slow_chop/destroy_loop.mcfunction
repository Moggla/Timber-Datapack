# loop
$schedule function timber:slow_chop/loop $(time_between_chops)t replace

# api
$execute at @e[type=minecraft:marker,tag=timber_slow_chop] as @e[type=minecraft:marker,tag=timber_destroy,sort=nearest,limit=$(blocks_per_chop)] at @s run function timber:slow_chop/api

# destroy n block
$execute at @e[type=minecraft:marker,tag=timber_slow_chop] as @e[type=minecraft:armor_stand,tag=timber_tool,y=-64,distance=...1,sort=arbitrary,limit=1] at @e[type=minecraft:marker,tag=timber_destroy,sort=nearest,limit=$(blocks_per_chop)] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand

# destroy animation. minecraft:block_drops stays on: blocks that hang on the tree (cocoa, torches, lanterns, ...) break with it and drop like in vanilla.
# The destroyed blocks drop like broken by hand too, those drops are removed again, their loot is the one from above.
tag @e[type=minecraft:item] add timber_keep
$execute at @e[type=minecraft:marker,tag=timber_slow_chop] at @e[type=minecraft:marker,tag=timber_destroy,sort=nearest,limit=$(blocks_per_chop)] run setblock ~ ~ ~ minecraft:air destroy
$execute at @e[type=minecraft:marker,tag=timber_slow_chop] at @e[type=minecraft:marker,tag=timber_destroy,sort=nearest,limit=$(blocks_per_chop)] align xyz run kill @e[type=minecraft:item,tag=!timber_keep,dx=0,dy=0,dz=0]
tag @e[type=minecraft:item] remove timber_keep

# stop sound
$execute at @e[type=minecraft:marker,tag=timber_slow_chop] if score stopsound timber matches 1.. at @e[type=minecraft:marker,tag=timber_destroy,sort=nearest,limit=$(blocks_per_chop)] as @a[distance=..20,tag=!global.ignore.gui] run function timber:utils/stopsound

# delete location item
$execute at @e[type=minecraft:marker,tag=timber_slow_chop] at @e[type=minecraft:marker,tag=timber_destroy,sort=nearest,limit=$(blocks_per_chop)] run kill @e[type=minecraft:item,distance=..1,nbt={Item:{components:{"minecraft:custom_data":{Tags:["timber_location"]}}}}]

# remove marker of processed blocks
$execute at @e[type=minecraft:marker,tag=timber_slow_chop] run kill @e[type=minecraft:marker,tag=timber_destroy,sort=nearest,limit=$(blocks_per_chop)]

# delete tree markers after chopping
execute unless entity @e[type=minecraft:marker,tag=timber_destroy] run function timber:slow_chop/delete_markers