# applies the value of the "Max. Tree Size" slider: 1 followed by the value
scoreboard players operation #x timber = @s TimberSetTreeSize
scoreboard players reset @s TimberSetTreeSize
scoreboard players set #p timber 1
execute if score #x timber matches 10..19 run scoreboard players set #p timber 10
execute if score #x timber matches 100..199 run scoreboard players set #p timber 100
execute if score #x timber matches 1000..1999 run scoreboard players set #p timber 1000
execute if score #x timber matches 10000..19999 run scoreboard players set #p timber 10000
scoreboard players operation #x timber -= #p timber
scoreboard players operation max_tree_size timber = #x timber
function timber:settings/after_set
function timber:settings/arm
function timber:settings/open/menu
