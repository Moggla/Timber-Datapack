# toggles "Enable Wooden Axe"
function timber:settings/before_set
execute store success score wooden_axe timber unless score wooden_axe timber matches 1
function timber:settings/after_set
function timber:settings/open/tools
