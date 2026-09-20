# trigger TimberToggle with a value > 1 (buttons of the help dialog)
scoreboard players operation #req timber = @s TimberToggle
scoreboard players set @s TimberToggle 0
execute if score #req timber matches 3 run return run function timber:settings/toggle_self
execute if score #req timber matches 4 run return run function timber:settings/leave_close
execute if score #req timber matches 2 run function timber:settings/dispatch
