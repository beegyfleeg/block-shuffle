tellraw @a[tag=playing,tag=alive] {"text": "Check for a bonus chest beneath your feet\n","color": "blue"}

scoreboard players set seed n 0
scoreboard players operation seen n = rng n
scoreboard players set add n 0
scoreboard players operation add n = gid n
scoreboard players operation add n *= 490 c
scoreboard players operation seed n += add n

execute at @a[tag=playing,tag=alive] run setblock ~ ~-1 ~ chest{LootTable:"sh:bonus"}

execute store result block 0 0 0 LootTableSeed long 1 run scoreboard players get seed n

execute at @a[tag=playing,tag=alive] align xyz run particle firework ~.5 ~-0.5 ~.5 0 0 0 0.6 50
