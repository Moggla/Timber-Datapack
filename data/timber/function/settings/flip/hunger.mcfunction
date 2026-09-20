# toggles "Hunger Effect"
function timber:settings/before_set
execute store success score hunger timber unless score hunger timber matches 1
function timber:settings/after_set
function timber:settings/open/menu
