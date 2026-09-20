# toggles "Chop Down"
function timber:settings/before_set
execute store success score chop_down timber unless score chop_down timber matches 1
function timber:settings/after_set
function timber:settings/open/menu
