#> Spawns the dummy player "tester" next to the tree base at ~8 ~ ~8 and gives them an axe
#> @param axe item id, e.g. "minecraft:iron_axe"
dummy tester spawn
tp @e[type=minecraft:player,name=tester,limit=1] ~7.5 ~ ~8.5
$item replace entity @e[type=minecraft:player,name=tester,limit=1] weapon.mainhand with $(axe)
