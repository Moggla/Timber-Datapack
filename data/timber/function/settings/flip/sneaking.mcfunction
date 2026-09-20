# toggles "Works When Sneaking"
function timber:settings/before_set
execute store success score sneaking timber unless score sneaking timber matches 1
function timber:settings/after_set
function timber:settings/open/menu
