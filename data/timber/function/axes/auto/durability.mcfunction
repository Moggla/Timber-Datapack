# binary search for the durability the item has left: the highest value that damage~{durability:{min:value}} still matches
scoreboard players set #auto_lo timber 0
scoreboard players set #auto_hi timber 1048576
scoreboard players set #auto_two timber 2
function timber:axes/auto/search
scoreboard players operation #auto_max timber = #auto_lo timber
scoreboard players operation #auto_max timber += #auto_damage timber
