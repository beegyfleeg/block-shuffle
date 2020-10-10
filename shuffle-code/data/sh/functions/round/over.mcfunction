scoreboard players set round n 5
title @a title {"text": "Round over","color": "blue"}
bossbar set sh:timer name {"text": "Round Over","color": "blue"}
title @a[tag=playing,tag=alive,scores={done=0,vote=0}] title {"text": "Failed!","color": "red"}
tellraw @a[tag=playing,tag=alive,scores={done=0,vote=0}] {"text": "\nYou didn't find the block in time\n","color": "red"}
scoreboard players remove @a[tag=playing,tag=alive,scores={done=0,vote=0}] lives 1
execute as @a[tag=playing,tag=alive,scores={done=0,vote=0}] at @s run playsound entity.ender_dragon.growl master @s
execute as @a[tag=playing,tag=alive,scores={lives=0}] run function sh:spect/dead

scoreboard players set left n 0
execute store result score left n if entity @a[tag=playing,tag=alive]
execute if score left n matches 1 run function sh:end
