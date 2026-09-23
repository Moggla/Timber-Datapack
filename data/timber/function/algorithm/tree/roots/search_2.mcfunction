scoreboard players add log_probes timber_bench 1

# if root (a log is never followed from here)
execute if block ~ ~ ~ minecraft:mangrove_roots unless entity @e[type=minecraft:marker,tag=timber_root,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop_roots
