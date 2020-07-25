#> search for leaves and note it
execute positioned ~ ~ ~1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] if predicate timber:block/cap run scoreboard players add leaves_found timber 1
execute positioned ~ ~ ~-1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] if predicate timber:block/cap run scoreboard players add leaves_found timber 1
execute positioned ~1 ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] if predicate timber:block/cap run scoreboard players add leaves_found timber 1
execute positioned ~-1 ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] if predicate timber:block/cap run scoreboard players add leaves_found timber 1
execute positioned ~ ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] if predicate timber:block/cap run scoreboard players add leaves_found timber 1

#> mark leaf that have been checked
execute positioned ~ ~ ~1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] if predicate timber:block/cap run summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:1}
execute positioned ~ ~ ~-1 unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] if predicate timber:block/cap run summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:1}
execute positioned ~1 ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] if predicate timber:block/cap run summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:1}
execute positioned ~-1 ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] if predicate timber:block/cap run summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:1}
execute positioned ~ ~ ~ unless entity @e[type=minecraft:area_effect_cloud,tag=timber_checked,distance=...1,sort=nearest,limit=1] if predicate timber:block/cap run summon area_effect_cloud ~ ~ ~ {Tags:["timber_checked"],Duration:1}