# if log
execute if predicate timber:block/log unless entity @e[type=minecraft:marker,tag=timber_log,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
# if root
execute if block ~ ~ ~ minecraft:mangrove_roots unless entity @e[type=minecraft:marker,tag=timber_root,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop_roots
