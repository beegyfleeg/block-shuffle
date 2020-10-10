execute as @a[tag=playing,tag=alive,scores={vote=0}] run trigger vote set 0

tellraw @a {"text": "\nVoting has ended","color": "blue"}
execute if score condition n matches 1 run tellraw @a {"text": "The timer ran out","color": "dark_purple"}
execute if score condition n matches 2 run tellraw @a {"text": "A player found the block","color": "dark_purple"}

execute if score condition n matches 1 run tellraw @a[scores={vote=0}] {"text": "Because you did not vote, this round is mandatory\n","color": "gray"}
execute if score condition n matches 2 run tellraw @a[scores={vote=0}] {"text": "This round is mandatory because a player found the block\n","color": "gray"}
tellraw @a[scores={vote=2}] {"text": "You voted to skip, so this round is optional\n","color": "gray"}

bossbar set sh:timer color blue
bossbar set sh:timer name {"text": "Round Timer","color": "blue"}
bossbar set sh:timer max 6000
bossbar set sh:timer value 6000

scoreboard players set time n 6000
schedule function sh:timer/decrease 1

execute as @a at @s run playsound block.bone_block.place master @s
scoreboard players set round n 3
