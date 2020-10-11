bossbar set sh:timer color green
bossbar set sh:timer name {"text": "Preparation Period","color": "green"}

tellraw @a {"text": "\nYou have a 3-minute preparation period to gather materials\n","color": "green"}
scoreboard players set time n 3600

bossbar set sh:timer max 3600
bossbar set sh:timer value 3600

scoreboard players set prep n 6
scoreboard players set round n 1

schedule function sh:timer/decrease 1
