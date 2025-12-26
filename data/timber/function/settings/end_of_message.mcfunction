execute store result score send_command_feedback timber run gamerule minecraft:send_command_feedback
execute if score send_command_feedback timber matches 1 run schedule function timber:settings/reset_gamerule 1t
gamerule minecraft:send_command_feedback false