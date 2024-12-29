# search for next log
execute positioned ~ ~1 ~ run function timber:algorithm/tree/search_2
execute positioned ~ ~1 ~1 run function timber:algorithm/tree/search_2
execute positioned ~ ~1 ~-1 run function timber:algorithm/tree/search_2
execute positioned ~1 ~1 ~ run function timber:algorithm/tree/search_2
execute positioned ~1 ~1 ~1 run function timber:algorithm/tree/search_2
execute positioned ~1 ~1 ~-1 run function timber:algorithm/tree/search_2
execute positioned ~-1 ~1 ~ run function timber:algorithm/tree/search_2
execute positioned ~-1 ~1 ~1 run function timber:algorithm/tree/search_2
execute positioned ~-1 ~1 ~-1 run function timber:algorithm/tree/search_2

execute positioned ~ ~ ~1 run function timber:algorithm/tree/search_2
execute positioned ~ ~ ~-1 run function timber:algorithm/tree/search_2
execute positioned ~1 ~ ~ run function timber:algorithm/tree/search_2
execute positioned ~1 ~ ~1 run function timber:algorithm/tree/search_2
execute positioned ~1 ~ ~-1 run function timber:algorithm/tree/search_2
execute positioned ~-1 ~ ~ run function timber:algorithm/tree/search_2
execute positioned ~-1 ~ ~1 run function timber:algorithm/tree/search_2
execute positioned ~-1 ~ ~-1 run function timber:algorithm/tree/search_2

# search for next log downwards
execute if score chop_down timber matches 1.. run function timber:algorithm/tree/search_down
# search for roots downwards
execute unless score chop_down timber matches 1.. if score destroy_roots timber matches 1.. if entity @e[type=minecraft:marker,tag=timber_root,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/search_down
