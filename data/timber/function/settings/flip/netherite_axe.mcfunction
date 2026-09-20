# toggles "Enable Netherite Axe"
function timber:settings/before_set
execute store success score netherite_axe timber unless score netherite_axe timber matches 1
function timber:settings/after_set
function timber:settings/open/tools
