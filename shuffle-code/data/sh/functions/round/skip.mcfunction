tellraw @a {"text":"\nROUND SKIPPED!\n","color": "red"}
bossbar set sh:timer name {"text": "Round Skipped","color": "red"}
execute as @a at @s run playsound block.anvil.land master @s ~ ~ ~ 0.3 0.5
scoreboard players set round n 4
schedule clear sh:timer/decrease

scoreboard players remove prep n 1
execute unless score prep n matches 0 run schedule function sh:round/start 5s
execute if score prep n matches 0 run schedule function sh:prep 5s
