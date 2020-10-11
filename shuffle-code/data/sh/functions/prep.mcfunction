bossbar set sh:timer color green
bossbar set sh:timer name {"text": "Preparation Period","color": "green"}

tellraw @a {"text": "\nYou have a 2-minute preparation period to gather materials\n","color": "green"}
scoreboard players set time n 2400

bossbar set sh:timer max 2400
bossbar set sh:timer value 2400

scoreboard players set prep n 8
scoreboard players set round n 1

scoreboard players set 490 c 490

setblock 0 0 0 chest{LootTable:"sh:bonus"}
scoreboard players set seed n 0
scoreboard players operation seen n = rng n
scoreboard players set add n 0
scoreboard players operation add n = gid n
scoreboard players operation add n *= 490 c
scoreboard players operation seed n += add n
execute store result block 0 0 0 LootTableSeed long 1 run scoreboard players get seed n

execute if entity @a[tag=playing,tag=!alive] run function sh:round/bonus
execute unless entity @a[tag=playing,tag=!alive] if entity @a[tag=playing,tag=alive,scores={lives=..4}] run function sh:round/bonus

schedule function sh:timer/decrease 1
