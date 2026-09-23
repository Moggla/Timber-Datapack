scoreboard players add log_probes timber_bench 1

# if log: the trunk is found, from now on roots are only followed sideways and downwards (chop_roots), so the walk doesn't go on to the next tree
execute if predicate timber:block/log unless entity @e[type=minecraft:marker,tag=timber_log,distance=...1,sort=arbitrary,limit=1] run scoreboard players set root_walk timber 0
execute if predicate timber:block/log unless entity @e[type=minecraft:marker,tag=timber_log,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
# if root
execute if score root_walk timber matches 1 if block ~ ~ ~ minecraft:mangrove_roots unless entity @e[type=minecraft:marker,tag=timber_root,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/roots/chop_start
execute if score root_walk timber matches 0 if block ~ ~ ~ minecraft:mangrove_roots unless entity @e[type=minecraft:marker,tag=timber_root,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop_roots
