# toggles "Enable Diamond Axe"
function timber:settings/before_set
execute store success score diamond_axe timber unless score diamond_axe timber matches 1
function timber:settings/after_set
function timber:settings/open/tools
