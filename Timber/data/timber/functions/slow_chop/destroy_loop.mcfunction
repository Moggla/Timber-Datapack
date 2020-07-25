#> Destroy 5 block
execute unless score b_p_c timber matches ..4 run function timber:slow_chop/destroy5

#> Destroy 1 block
execute unless score b_p_c timber matches 5.. run function timber:slow_chop/destroy1

#> stop sound
execute if score stopsound timber matches 1.. run stopsound @a[distance=..20,tag=!global.ignore,tag=!global.ignore.gui] block minecraft:block.wood.break
execute if score stopsound timber matches 1.. run stopsound @a[distance=..20,tag=!global.ignore,tag=!global.ignore.gui] block minecraft:block.wart_block.break
execute if score stopsound timber matches 1.. run stopsound @a[distance=..20,tag=!global.ignore,tag=!global.ignore.gui] block minecraft:block.shroomlight.break
execute if score stopsound timber matches 1.. run stopsound @a[distance=..20,tag=!global.ignore,tag=!global.ignore.gui] block minecraft:block.nether_wart.break
execute if score stopsound timber matches 1.. run stopsound @a[distance=..20,tag=!global.ignore,tag=!global.ignore.gui] block minecraft:block.stem.break

#> Delete location item
kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["timber_location"]}}}]

#> loop
execute if score b_p_c timber < blocks_per_chop timber run function timber:slow_chop/destroy_loop
execute if score b_p_c timber >= blocks_per_chop timber run scoreboard players set b_p_c timber 0