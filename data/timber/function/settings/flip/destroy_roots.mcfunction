# toggles "Destroy Roots"
function timber:settings/before_set
execute store success score destroy_roots timber unless score destroy_roots timber matches 1
function timber:settings/after_set
function timber:settings/open/menu
