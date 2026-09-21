# Sets the damage of the axe in the hand. The modifier is inline, the key was renamed from function to type in pack format 121:
# with both keys it works in every version.
$item modify entity @s weapon.mainhand {function:"minecraft:set_components",type:"minecraft:set_components",components:{"minecraft:damage":$(damage)}}
