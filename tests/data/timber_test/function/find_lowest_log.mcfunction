#> Finds the lowest log of the whole tree, not the lowest one in the middle column: mangroves lean, their trunk doesn't start above the
#> place where the tree was generated. Mining a log further up chops upwards only (chop_down is off), the logs below would stay.
#> (The marker sits in the middle of the block: a marker on the lower edge of the selector box isn't counted as inside.)
#> A marker with the tag tb_scan walks through the arena from the bottom (the whole 40x40 arena, y 0 to 39), scan_step stops on the first log.
#> The marker stays on that log, mine_here uses it. Kill it afterwards, it would keep the marker check at the end of the test from finishing.
scoreboard players set #sx timber_test 0
scoreboard players set #sy timber_test 0
scoreboard players set #sz timber_test 0
summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["tb_scan"]}
execute as @e[type=minecraft:marker,tag=tb_scan,dx=39,dy=39,dz=39] at @s store result score #found timber_test run function timber_test:scan_step
