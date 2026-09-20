# toggles "Mute Breaking Sounds"
function timber:settings/before_set
execute store success score stopsound timber unless score stopsound timber matches 1
function timber:settings/after_set
function timber:settings/open/menu
