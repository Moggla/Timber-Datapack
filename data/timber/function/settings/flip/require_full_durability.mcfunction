# toggles "Require Full Durability"
execute unless score wear_out timber matches 1 run return run function timber:settings/open/menu
execute if score stop_chopping timber matches 1 run return run function timber:settings/open/menu
function timber:settings/before_set
execute store success score require_full_durability timber unless score require_full_durability timber matches 1
function timber:settings/after_set
function timber:settings/open/menu
