# toggles "Enable Copper Axe"
function timber:settings/before_set
execute store success score copper_axe timber unless score copper_axe timber matches 1
function timber:settings/after_set
function timber:settings/open/tools
