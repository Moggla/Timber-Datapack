# toggles "Chop Slowly"
execute if score drop_loot timber matches 1 run return run function timber:settings/open/menu
function timber:settings/before_set
execute store success score slow_chop timber unless score slow_chop timber matches 1
function timber:settings/after_set
function timber:settings/open/menu
