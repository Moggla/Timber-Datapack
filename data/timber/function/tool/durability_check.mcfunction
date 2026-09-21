# check if axe is broken: axe_max is the max durability of the axe that was used
execute unless score durability timber <= axe_max timber run scoreboard players set durability_okay timber 0
