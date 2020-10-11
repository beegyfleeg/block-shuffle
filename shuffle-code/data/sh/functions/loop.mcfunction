execute if score game n matches 1 run function sh:loop/main
schedule function sh:loop 1
scoreboard players add rng n 1
execute as @r run function sh:rng

execute if score rng n matches 460.. run scoreboard players set rng n 1

kill @e[type=ender_dragon]
