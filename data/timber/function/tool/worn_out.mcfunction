# break axe if worn out
execute if score durability timber >= axe_max timber run item replace entity @s weapon.mainhand with minecraft:air
execute if score durability timber >= axe_max timber run playsound minecraft:entity.item.break player @a ~ ~ ~
