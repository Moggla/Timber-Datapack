execute store result score sendCommandFeedback timber run gamerule sendCommandFeedback
execute if score sendCommandFeedback timber matches 1 run schedule function timber:settings/reset_gamerule 1t
gamerule sendCommandFeedback false