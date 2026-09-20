# toggles "Enable Golden Axe"
function timber:settings/before_set
execute store success score golden_axe timber unless score golden_axe timber matches 1
function timber:settings/after_set
function timber:settings/open/tools
