# Registers the axe in the hotbar slot with the max durability of the item. It is not in the NBT of the item when it is the default
# of the item, but the item predicate damage~{durability:...} sees how much the item can still take: max = that + the damage.
# An item without durability never breaks.
$execute store result score #auto_damage timber run data get entity @s Inventory[{Slot:$(slot)b}].components."minecraft:damage"
scoreboard players set #auto_max timber 2147483647
$execute if items entity @s hotbar.$(slot) *[damage~{durability:{min:0}}] run function timber:axes/auto/durability
data modify storage timber:axes build set value {}
data modify storage timber:axes build.item set from storage timber:axes auto.item
execute store result storage timber:axes build.durability int 1 run scoreboard players get #auto_max timber
data modify storage timber:axes build.label set from storage timber:axes auto.item
# found by itself: the settings menu shows the name of the item (translation key item.namespace.name)
data modify storage timber:axes build.auto set value 1b
function timber:axes/register
