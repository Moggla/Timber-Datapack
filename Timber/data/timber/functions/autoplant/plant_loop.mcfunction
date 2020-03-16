#> plant sapling
function timber:autoplant/search_sapling

execute if score plant_sapling timber matches 1.. run schedule function timber:autoplant/plant_loop 2s