# applies the values submitted by the settings dialog
scoreboard players operation #old_slow_chop timber = slow_chop timber
scoreboard players operation #old_plant_sapling timber = plant_sapling timber
scoreboard players operation #old_drop_loot timber = drop_loot timber

$scoreboard players set standing timber $(standing)
$scoreboard players set sneaking timber $(sneaking)
$scoreboard players set destroy_leaves timber $(destroy_leaves)
$scoreboard players set plant_sapling timber $(plant_sapling)
$scoreboard players set destroy_roots timber $(destroy_roots)
$scoreboard players set start_chop_on_root timber $(start_chop_on_root)
$scoreboard players set slow_chop timber $(slow_chop)
$scoreboard players set chop_down timber $(chop_down)
$scoreboard players set stop_chopping timber $(stop_chopping)
$scoreboard players set wear_out timber $(wear_out)
$scoreboard players set drop_loot timber $(drop_loot)
$scoreboard players set hunger timber $(hunger)
$scoreboard players set stopsound timber $(stopsound)
$scoreboard players set wooden_axe timber $(wooden_axe)
$scoreboard players set stone_axe timber $(stone_axe)
$scoreboard players set copper_axe timber $(copper_axe)
$scoreboard players set iron_axe timber $(iron_axe)
$scoreboard players set golden_axe timber $(golden_axe)
$scoreboard players set diamond_axe timber $(diamond_axe)
$scoreboard players set netherite_axe timber $(netherite_axe)
$scoreboard players set chop_trees timber $(chop_trees)
$scoreboard players set chop_fungi timber $(chop_fungi)
$scoreboard players set persistent timber $(persistent)
$data modify storage timber:settings input.blocks_per_chop set value $(blocks_per_chop)
execute store result score blocks_per_chop timber run data get storage timber:settings input.blocks_per_chop
$data modify storage timber:settings input.time_between_chops set value $(time_between_chops)
execute store result score time_between_chops timber run data get storage timber:settings input.time_between_chops
$data modify storage timber:settings input.max_tree_size set value $(max_tree_size)
execute store result score max_tree_size timber run data get storage timber:settings input.max_tree_size
$data modify storage timber:settings input.min_leaves_found set value $(min_leaves_found)
execute store result score min_leaves_found timber run data get storage timber:settings input.min_leaves_found
data remove storage timber:settings input

# options which exclude each other: the one that was just enabled wins
execute if score slow_chop timber matches 1 if score drop_loot timber matches 1 if score #old_drop_loot timber matches 1 run scoreboard players set drop_loot timber 0
execute if score slow_chop timber matches 1 if score drop_loot timber matches 1 unless score #old_drop_loot timber matches 1 run scoreboard players set slow_chop timber 0
execute if score stop_chopping timber matches 1 run scoreboard players set wear_out timber 1

# start optional loops
execute if score slow_chop timber matches 1 unless score #old_slow_chop timber matches 1 run function timber:slow_chop/loop
execute if score plant_sapling timber matches 1 unless score #old_plant_sapling timber matches 1 run function timber:autoplant/loop
