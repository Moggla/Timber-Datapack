# opens the "Tools" settings page with the current values
# only reachable for admins
data modify storage timber:settings dialog set value {"type":"minecraft:multi_action","title":"Timber Settings / Tools","external_title":"Timber Tools","inputs":[],"can_close_with_escape":true,"pause":false,"after_action":"none","columns":2,"actions":[],"exit_action":{"label":{"translate":"gui.back"},"width":150,"action":{"type":"minecraft:run_command","command":"trigger TimberSettings set 1"}}}
# one button for every registered axe, the code of the button is 200 plus the position of the axe in the list
data modify storage timber:axes queue set from storage timber:axes list
scoreboard players set #axe_code timber 200
function timber:settings/open/tools_next
function timber:settings/show with storage timber:settings
