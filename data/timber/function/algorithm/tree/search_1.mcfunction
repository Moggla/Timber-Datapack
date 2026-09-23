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
