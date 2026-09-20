# toggles "Wear Out Tool More"
execute if score stop_chopping timber matches 1 run return run function timber:settings/open/menu
function timber:settings/before_set
execute store success score wear_out timber unless score wear_out timber matches 1
function timber:settings/after_set
function timber:settings/open/menu
