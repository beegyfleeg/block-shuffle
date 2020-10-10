tellraw @a {"text": "\nYou have a 3-minute preparation period\n","color": "green"}
scoreboard players set time n 3600

bossbar set sh:timer max 3600
bossbar set sh:timer value 3600

scoreboard players set round n 1

schedule function sh:timer/decrease 1
