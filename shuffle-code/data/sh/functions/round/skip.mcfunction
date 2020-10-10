tellraw @a {"text":"\nROUND SKIPPED!\n","color": "red"}
bossbar set sh:timer name {"text": "Round Skipped","color": "red"}
execute as @a at @s run playsound block.anvil.land master @s ~ ~ ~ 0.3 0.5
scoreboard players set round n 4
schedule clear sh:timer/decrease

schedule function sh:round/start 5s
