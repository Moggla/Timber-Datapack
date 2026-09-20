# toggles "Chop Fungi"
function timber:settings/before_set
execute store success score chop_fungi timber unless score chop_fungi timber matches 1
function timber:settings/after_set
function timber:settings/open/menu
