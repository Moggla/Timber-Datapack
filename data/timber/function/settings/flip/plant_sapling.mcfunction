# toggles "Auto Plant Saplings"
function timber:settings/before_set
execute store success score plant_sapling timber unless score plant_sapling timber matches 1
function timber:settings/after_set
function timber:settings/open/menu
