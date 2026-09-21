# looks at one character of the item id, at the position pos
$data modify storage timber:axes build.ch set string storage timber:axes build.item $(pos) $(next)
execute if data storage timber:axes build{ch:":"} run return run function timber:axes/split_done with storage timber:axes build
# no colon in the first 64 characters: not an item id
execute if score #axe_pos timber matches 64.. run return run function timber:axes/split_failed with storage timber:axes build
scoreboard players add #axe_pos timber 1
scoreboard players add #axe_next timber 1
execute store result storage timber:axes build.pos int 1 run scoreboard players get #axe_pos timber
execute store result storage timber:axes build.next int 1 run scoreboard players get #axe_next timber
function timber:axes/split_step with storage timber:axes build
