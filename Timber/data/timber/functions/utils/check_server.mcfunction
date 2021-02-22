# load until someone is in the server
execute unless entity @r run schedule function timber:utils/check_server 1s

# Checking if the server uses a different jar from the vanilla one
execute unless score not_vanilla timber matches 1.. store success score not_vanilla timber run data get entity @r "Spigot.ticksLived"
execute unless score not_vanilla timber matches 1.. store success score not_vanilla timber run data get entity @r "Bukkit.updateLevel"
execute unless score not_vanilla timber matches 1.. store success score not_vanilla timber run data get entity @r "Paper.SpawnReason"
execute if score not_vanilla timber matches 1 run tellraw @a ["",{"text":"Timber Datapack Warning: ","color":"red"},{"text":"Compatibility in non-vanilla servers is not guaranteed! For more information please visit official download site.","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/timber-datapack/"}}]