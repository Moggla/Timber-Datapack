# toggles "Works When Standing"
function timber:settings/before_set
execute store success score standing timber unless score standing timber matches 1
function timber:settings/after_set
function timber:settings/open/menu
