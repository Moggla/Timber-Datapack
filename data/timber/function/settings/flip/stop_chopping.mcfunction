# toggles "Stop on Axe Break"
execute unless score wear_out timber matches 1 run return run function timber:settings/open/menu
function timber:settings/before_set
execute store success score stop_chopping timber unless score stop_chopping timber matches 1
function timber:settings/after_set
function timber:settings/open/menu
