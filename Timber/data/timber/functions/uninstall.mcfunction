#> remove scoreboards
scoreboard objectives remove timber_w_axe
scoreboard objectives remove timber_s_axe
scoreboard objectives remove timber_i_axe
scoreboard objectives remove timber_g_axe
scoreboard objectives remove timber_d_axe
scoreboard objectives remove timber_n_axe
scoreboard objectives remove timber
scoreboard objectives remove TimberToggle
scoreboard objectives remove timber_disabled

#> remove markers
kill @e[type=minecraft:area_effect_cloud,tag=timber_slow_chop]
kill @e[type=minecraft:armor_stand,tag=timber_tool]

#> restore gamerule
gamerule sendCommandFeedback true

#> sad message ☹
tellraw @a [{"text":"Timber Datapack uninstalled ☹","color":"dark_red"},{"text":"\n[click here to leave me a feedback]","color":"gold","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/timber-datapack/"}}]