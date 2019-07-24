### reset ###
scoreboard players set leaves_found timber 0
scoreboard players set tree_size timber 0

### validate tree by the fresh chopped log ###
execute unless score standing timber matches 1.. if score @s t_sneak_time matches 0 run function timber:validate
execute if score sneaking timber matches 1.. if score @s t_sneak_time matches 1.. run function timber:validate

### remove markers ###
kill @e[tag=timber_checked]

### if tree has been validated ###
execute if score leaves_found timber >= min_leaves_found timber unless score tree_size timber matches 0 run function timber:validated

### reset scores ###
scoreboard players set @s t_wooden_axe 0
scoreboard players set @s t_stone_axe 0
scoreboard players set @s t_iron_axe 0
scoreboard players set @s t_golden_axe 0
scoreboard players set @s t_diamond_axe 0