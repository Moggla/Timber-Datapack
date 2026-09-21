function timber:settings/before_set
$execute store success score $(holder) timber unless score $(holder) timber matches 1
function timber:settings/after_set
function timber:settings/open/tools
