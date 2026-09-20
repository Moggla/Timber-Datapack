# toggles "Enable Iron Axe"
function timber:settings/before_set
execute store success score iron_axe timber unless score iron_axe timber matches 1
function timber:settings/after_set
function timber:settings/open/tools
