# toggles "Chop Trees"
function timber:settings/before_set
execute store success score chop_trees timber unless score chop_trees timber matches 1
function timber:settings/after_set
function timber:settings/open/menu
