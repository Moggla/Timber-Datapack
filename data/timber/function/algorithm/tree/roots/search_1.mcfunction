# search for next root sideways
execute positioned ~ ~ ~1 run function timber:algorithm/tree/roots/search_2
execute positioned ~ ~ ~-1 run function timber:algorithm/tree/roots/search_2
execute positioned ~1 ~ ~ run function timber:algorithm/tree/roots/search_2
execute positioned ~1 ~ ~1 run function timber:algorithm/tree/roots/search_2
execute positioned ~1 ~ ~-1 run function timber:algorithm/tree/roots/search_2
execute positioned ~-1 ~ ~ run function timber:algorithm/tree/roots/search_2
execute positioned ~-1 ~ ~1 run function timber:algorithm/tree/roots/search_2
execute positioned ~-1 ~ ~-1 run function timber:algorithm/tree/roots/search_2

# search for next root downwards
execute positioned ~ ~-1 ~ run function timber:algorithm/tree/roots/search_2
execute positioned ~ ~-1 ~1 run function timber:algorithm/tree/roots/search_2
execute positioned ~ ~-1 ~-1 run function timber:algorithm/tree/roots/search_2
execute positioned ~1 ~-1 ~ run function timber:algorithm/tree/roots/search_2
execute positioned ~1 ~-1 ~1 run function timber:algorithm/tree/roots/search_2
execute positioned ~1 ~-1 ~-1 run function timber:algorithm/tree/roots/search_2
execute positioned ~-1 ~-1 ~ run function timber:algorithm/tree/roots/search_2
execute positioned ~-1 ~-1 ~1 run function timber:algorithm/tree/roots/search_2
execute positioned ~-1 ~-1 ~-1 run function timber:algorithm/tree/roots/search_2
