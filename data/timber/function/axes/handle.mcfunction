# Run as the player who used the axe. The values of the axe are for the functions of this chop.
$scoreboard players set @s $(obj) 0
$scoreboard players set axe_max timber $(durability)
$scoreboard players operation axe_on timber = $(holder) timber
# is this axe enabled in the settings and did the player not switch timber off?
execute unless score @s timber_disabled matches 1.. if score axe_on timber matches 1.. run function timber:utils/check_max_command_sequence_length
