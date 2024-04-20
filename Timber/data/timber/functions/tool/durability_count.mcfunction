# count wear out of tool depending on enchantment
execute if score unbreaking timber matches 0 run scoreboard players add durability timber 1
execute if score unbreaking timber matches 1 if predicate timber:0.5 run scoreboard players add durability timber 1
execute if score unbreaking timber matches 2 if predicate timber:0.333 run scoreboard players add durability timber 1
execute if score unbreaking timber matches 3 if predicate timber:0.25 run scoreboard players add durability timber 1