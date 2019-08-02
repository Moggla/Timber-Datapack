#> break axe if worn out
execute if score @s t_wooden_axe matches 1.. if score durability timber matches 59.. run replaceitem entity @s weapon.mainhand minecraft:air
execute if score @s t_wooden_axe matches 1.. if score durability timber matches 59.. run playsound minecraft:entity.item.break player @a ~ ~ ~
execute if score @s t_stone_axe matches 1.. if score durability timber matches 131.. run replaceitem entity @s weapon.mainhand minecraft:air
execute if score @s t_stone_axe matches 1.. if score durability timber matches 131.. run playsound minecraft:entity.item.break player @a ~ ~ ~
execute if score @s t_iron_axe matches 1.. if score durability timber matches 250.. run replaceitem entity @s weapon.mainhand minecraft:air
execute if score @s t_iron_axe matches 1.. if score durability timber matches 250.. run playsound minecraft:entity.item.break player @a ~ ~ ~
execute if score @s t_golden_axe matches 1.. if score durability timber matches 32.. run replaceitem entity @s weapon.mainhand minecraft:air
execute if score @s t_golden_axe matches 1.. if score durability timber matches 32.. run playsound minecraft:entity.item.break player @a ~ ~ ~
execute if score @s t_diamond_axe matches 1.. if score durability timber matches 1561.. run replaceitem entity @s weapon.mainhand minecraft:air
execute if score @s t_diamond_axe matches 1.. if score durability timber matches 1561.. run playsound minecraft:entity.item.break player @a ~ ~ ~