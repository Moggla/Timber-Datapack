scoreboard players add leaf_distance timber 1
# search for next cap
execute positioned ~ ~ ~1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_cap,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/destroy
execute positioned ~ ~ ~-1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_cap,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/destroy
execute positioned ~1 ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_cap,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/destroy
execute positioned ~-1 ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_cap,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/destroy
execute positioned ~ ~1 ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_cap,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/destroy
execute positioned ~ ~-1 ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_cap,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/destroy

execute positioned ~ ~-1 ~1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_cap,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/destroy
execute positioned ~ ~-1 ~-1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_cap,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/destroy
execute positioned ~1 ~-1 ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_cap,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/destroy
execute positioned ~-1 ~-1 ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_cap,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/destroy

execute positioned ~1 ~-1 ~1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_cap,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/destroy
execute positioned ~-1 ~-1 ~-1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_cap,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/destroy
execute positioned ~1 ~-1 ~-1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_cap,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/destroy
execute positioned ~-1 ~-1 ~1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_cap,distance=...1,sort=arbitrary,limit=1] if predicate timber:block/cap run function timber:algorithm/fungus/leaves/destroy