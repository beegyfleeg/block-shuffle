scoreboard players set block n 0
scoreboard players operation block n = rng n
scoreboard players set round n 2

execute as @e[tag=stand] run function sh:round/name

tellraw @a [{"text": "\nThe round has started","color": "gray"},{"text": "\nStand on ","color": "white"},{"selector": "@e[tag=stand]","color": "gold"},"\n"]

scoreboard players set @a done 0
scoreboard players set @a vote 0
function sh:round/vote/start

setblock 0 0 0 air
