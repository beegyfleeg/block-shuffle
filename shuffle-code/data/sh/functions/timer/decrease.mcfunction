scoreboard players remove time n 1
execute store result bossbar sh:timer value run scoreboard players get time n
execute unless score time n matches 0 run schedule function sh:timer/decrease 1
execute if score time n matches 0 run function sh:timer/next
