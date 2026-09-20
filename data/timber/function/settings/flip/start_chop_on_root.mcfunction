# toggles "Chop on Root Break"
function timber:settings/before_set
execute store success score start_chop_on_root timber unless score start_chop_on_root timber matches 1
function timber:settings/after_set
function timber:settings/open/menu
