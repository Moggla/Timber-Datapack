#> search for next cap
summon area_effect_cloud ~ ~ ~ {Tags:["timber_leaf"],Duration:1}

execute positioned ~ ~ ~1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaf,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/search
execute positioned ~ ~ ~-1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaf,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/search
execute positioned ~1 ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaf,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/search
execute positioned ~-1 ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaf,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/search
execute positioned ~ ~1 ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaf,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/search
execute positioned ~ ~-1 ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaf,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/search

execute positioned ~ ~-1 ~1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaf,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/search
execute positioned ~ ~-1 ~-1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaf,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/search
execute positioned ~1 ~-1 ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaf,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/search
execute positioned ~-1 ~-1 ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaf,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/search

execute positioned ~1 ~-1 ~1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaf,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/search
execute positioned ~-1 ~-1 ~-1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaf,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/search
execute positioned ~1 ~-1 ~-1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaf,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/search
execute positioned ~-1 ~-1 ~1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_leaf,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/search