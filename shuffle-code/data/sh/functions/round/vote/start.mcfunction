bossbar set sh:timer color red
bossbar set sh:timer max 600
bossbar set sh:timer value 600
bossbar set sh:timer name {"text": "Voting Period","color": "red"}

scoreboard players set time n 600
schedule function sh:timer/decrease 1

execute as @a at @s run playsound ui.stonecutter.take_result master @s

scoreboard players enable @a[tag=playing,tag=alive] vote
tellraw @a[tag=playing,tag=alive] {"text": "   [VOTE SKIP]\n","color": "red","clickEvent": {"action": "run_command","value": "/trigger vote set 1"}}
