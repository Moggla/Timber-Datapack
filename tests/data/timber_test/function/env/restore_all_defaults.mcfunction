#> Puts every setting back to its default, and clears the loops that a setting flip may have scheduled (they would run in the next batch)
scoreboard players set standing timber 1
scoreboard players set sneaking timber 0
scoreboard players set destroy_leaves timber 1
scoreboard players set plant_sapling timber 0
scoreboard players set destroy_roots timber 1
scoreboard players set start_chop_on_root timber 1
scoreboard players set slow_chop timber 0
scoreboard players set chop_down timber 0
scoreboard players set stop_chopping timber 0
scoreboard players set wear_out timber 1
scoreboard players set drop_loot timber 0
scoreboard players set hunger timber 0
scoreboard players set stopsound timber 0
scoreboard players set wooden_axe timber 1
scoreboard players set stone_axe timber 1
scoreboard players set copper_axe timber 1
scoreboard players set iron_axe timber 1
scoreboard players set golden_axe timber 1
scoreboard players set diamond_axe timber 1
scoreboard players set netherite_axe timber 1
scoreboard players set chop_trees timber 1
scoreboard players set chop_fungi timber 0
scoreboard players set persistent timber 0
scoreboard players set blocks_per_chop timber 1
scoreboard players set time_between_chops timber 1
scoreboard players set max_tree_size timber 555
scoreboard players set min_leaves_found timber 5
schedule clear timber:slow_chop/loop
schedule clear timber:autoplant/loop
