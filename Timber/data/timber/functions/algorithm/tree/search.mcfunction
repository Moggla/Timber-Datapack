# search for next log
execute positioned ~ ~1 ~ if predicate timber:block/log unless entity @e[type=minecraft:area_effect_cloud,tag=timber_logs,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~ ~1 ~1 if predicate timber:block/log unless entity @e[type=minecraft:area_effect_cloud,tag=timber_logs,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~ ~1 ~-1 if predicate timber:block/log unless entity @e[type=minecraft:area_effect_cloud,tag=timber_logs,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~1 ~1 ~ if predicate timber:block/log unless entity @e[type=minecraft:area_effect_cloud,tag=timber_logs,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~1 ~1 ~1 if predicate timber:block/log unless entity @e[type=minecraft:area_effect_cloud,tag=timber_logs,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~1 ~1 ~-1 if predicate timber:block/log unless entity @e[type=minecraft:area_effect_cloud,tag=timber_logs,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~-1 ~1 ~ if predicate timber:block/log unless entity @e[type=minecraft:area_effect_cloud,tag=timber_logs,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~-1 ~1 ~1 if predicate timber:block/log unless entity @e[type=minecraft:area_effect_cloud,tag=timber_logs,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~-1 ~1 ~-1 if predicate timber:block/log unless entity @e[type=minecraft:area_effect_cloud,tag=timber_logs,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop

execute positioned ~ ~ ~1 if predicate timber:block/log unless entity @e[type=minecraft:area_effect_cloud,tag=timber_logs,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~ ~ ~-1 if predicate timber:block/log unless entity @e[type=minecraft:area_effect_cloud,tag=timber_logs,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~1 ~ ~ if predicate timber:block/log unless entity @e[type=minecraft:area_effect_cloud,tag=timber_logs,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~1 ~ ~1 if predicate timber:block/log unless entity @e[type=minecraft:area_effect_cloud,tag=timber_logs,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~1 ~ ~-1 if predicate timber:block/log unless entity @e[type=minecraft:area_effect_cloud,tag=timber_logs,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~-1 ~ ~ if predicate timber:block/log unless entity @e[type=minecraft:area_effect_cloud,tag=timber_logs,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~-1 ~ ~1 if predicate timber:block/log unless entity @e[type=minecraft:area_effect_cloud,tag=timber_logs,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~-1 ~ ~-1 if predicate timber:block/log unless entity @e[type=minecraft:area_effect_cloud,tag=timber_logs,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop

# search for next log downwards
execute if score chop_down timber matches 1.. run function timber:algorithm/tree/search_down


