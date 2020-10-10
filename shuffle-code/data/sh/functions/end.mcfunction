scoreboard players set round n 0
title @a times 2 40 3
title @a title [{"selector": "@a[tag=playing,tag=alive]"},{"text": " wins!","color": "green"}]
execute as @a[tag=playing,tag=alive] at @s run playsound event.raid.horn master @s ~ ~ ~ 256
schedule function sh:reset 5s

schedule clear sh:timer/decrease
bossbar set sh:timer name {"text": "Game Over","color": "blue"}
