scoreboard players set @s done 1
playsound entity.player.levelup master @s
particle minecraft:totem_of_undying ~ ~1.5 ~ 0 0 0 0.8 50

fill ~ ~-1 ~ ~ ~ ~ air
effect give @s resistance 10 4 true
summon tnt ~ ~-1 ~ {Fuse:1}

title @s title {"text": "Done!","color": "green"}
tellraw @a [{"selector": "@s"},{"text": " found the block","color": "green"}]
execute if entity @a[tag=playing,tag=alive,scores={vote=2}] run tellraw @a {"text": "\nThis round is now mandatory!\n","color": "blue"}
scoreboard players set @a vote 0
scoreboard players set condition n 2
execute if score round n matches 2 run function sh:round/vote/over

scoreboard players set left n 0
execute store result score left n if entity @a[tag=playing,tag=alive,scores={done=0}]
execute if score left n matches 0..1 run function sh:round/over
