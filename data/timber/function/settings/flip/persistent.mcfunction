# toggles "Player-Placed Trees"
function timber:settings/before_set
execute store success score persistent timber unless score persistent timber matches 1
function timber:settings/after_set
function timber:settings/open/menu
