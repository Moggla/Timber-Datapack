# search for next log
execute positioned ~ ~1 ~ if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_stem,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/fungus/chop
execute positioned ~ ~1 ~1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_stem,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/fungus/chop
execute positioned ~ ~1 ~-1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_stem,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/fungus/chop
execute positioned ~1 ~1 ~ if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_stem,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/fungus/chop
execute positioned ~1 ~1 ~1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_stem,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/fungus/chop
execute positioned ~1 ~1 ~-1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_stem,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/fungus/chop
execute positioned ~-1 ~1 ~ if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_stem,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/fungus/chop
execute positioned ~-1 ~1 ~1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_stem,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/fungus/chop
execute positioned ~-1 ~1 ~-1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_stem,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/fungus/chop

execute positioned ~ ~ ~1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_stem,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/fungus/chop
execute positioned ~ ~ ~-1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_stem,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/fungus/chop
execute positioned ~1 ~ ~ if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_stem,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/fungus/chop
execute positioned ~1 ~ ~1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_stem,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/fungus/chop
execute positioned ~1 ~ ~-1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_stem,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/fungus/chop
execute positioned ~-1 ~ ~ if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_stem,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/fungus/chop
execute positioned ~-1 ~ ~1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_stem,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/fungus/chop
execute positioned ~-1 ~ ~-1 if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_stem,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/fungus/chop

execute positioned ~ ~2 ~ if predicate timber:block/stem unless entity @e[type=minecraft:area_effect_cloud,tag=timber_stem,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/fungus/chop

# search for next log downwards
execute if score chop_down timber matches 1.. run function timber:algorithm/fungus/search_down