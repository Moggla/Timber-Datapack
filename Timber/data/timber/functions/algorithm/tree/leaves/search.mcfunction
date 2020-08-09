# save leaves distance tag at its position
summon area_effect_cloud ~ ~ ~ {Tags:["timber_leaf_distance"],Duration:1}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=timber_leaf_distance,distance=...1,sort=arbitrary,limit=1] timber = leaf_distance timber

# load leaves distance tag and search for next leaf
scoreboard players operation leaf_distance_old timber = @e[type=minecraft:area_effect_cloud,tag=timber_leaf_distance,distance=...1,sort=arbitrary,limit=1] timber
execute positioned ~ ~ ~1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaf_distance,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/leaf run function timber:algorithm/tree/leaves/destroy
scoreboard players operation leaf_distance_old timber = @e[type=minecraft:area_effect_cloud,tag=timber_leaf_distance,distance=...1,sort=arbitrary,limit=1] timber
execute positioned ~ ~ ~-1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaf_distance,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/leaf run function timber:algorithm/tree/leaves/destroy
scoreboard players operation leaf_distance_old timber = @e[type=minecraft:area_effect_cloud,tag=timber_leaf_distance,distance=...1,sort=arbitrary,limit=1] timber
execute positioned ~1 ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaf_distance,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/leaf run function timber:algorithm/tree/leaves/destroy
scoreboard players operation leaf_distance_old timber = @e[type=minecraft:area_effect_cloud,tag=timber_leaf_distance,distance=...1,sort=arbitrary,limit=1] timber
execute positioned ~-1 ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaf_distance,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/leaf run function timber:algorithm/tree/leaves/destroy
scoreboard players operation leaf_distance_old timber = @e[type=minecraft:area_effect_cloud,tag=timber_leaf_distance,distance=...1,sort=arbitrary,limit=1] timber
execute positioned ~ ~1 ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaf_distance,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/leaf run function timber:algorithm/tree/leaves/destroy
scoreboard players operation leaf_distance_old timber = @e[type=minecraft:area_effect_cloud,tag=timber_leaf_distance,distance=...1,sort=arbitrary,limit=1] timber
execute positioned ~ ~-1 ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaf_distance,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/leaf run function timber:algorithm/tree/leaves/destroy