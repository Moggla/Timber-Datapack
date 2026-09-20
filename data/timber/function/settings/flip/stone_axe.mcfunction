# toggles "Enable Stone Axe"
function timber:settings/before_set
execute store success score stone_axe timber unless score stone_axe timber matches 1
function timber:settings/after_set
function timber:settings/open/tools
