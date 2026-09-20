# toggles "Destroy Leaves"
function timber:settings/before_set
execute store success score destroy_leaves timber unless score destroy_leaves timber matches 1
function timber:settings/after_set
function timber:settings/open/menu
