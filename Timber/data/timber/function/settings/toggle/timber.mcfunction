# reset
scoreboard players set @s TimberToggle 0
# toggle
execute unless score @s timber_disabled matches 1.. run scoreboard players set @s timber_disabled 3
execute if score @s timber_disabled matches 1 run scoreboard players set @s timber_disabled 0
execute if score @s timber_disabled matches 3 run scoreboard players set @s timber_disabled 1
# display on/off status
execute unless score @s[tag=!global.ignore.gui] timber_disabled matches 1.. run tellraw @s ["",{"text":"<<  ","color":"dark_gray"},{"text":"✔","color":"green"},{"text":" Timber is now on"},{"text":"   >>","color":"dark_gray"}]
execute if score @s[tag=!global.ignore.gui] timber_disabled matches 1.. run tellraw @s ["",{"text":"<<  ","color":"dark_gray"},{"text":"❌","color":"red"},{"text":" Timber is now off"},{"text":"  >>","color":"dark_gray"}]