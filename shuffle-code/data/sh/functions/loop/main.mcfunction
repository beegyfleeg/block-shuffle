execute as @a[tag=!spect] unless score @s gid = gid n run function sh:spect/invalid

execute as @a[tag=playing,tag=alive] run function sh:loop/sat

execute if score round n matches 2..3 run title @a[tag=!alive] actionbar {"selector": "@e[tag=stand]","color": "gold"}
execute if score round n matches 2..3 run title @a[tag=!playing] actionbar {"selector": "@e[tag=stand]","color": "gold"}
execute if score round n matches 4 run title @a actionbar {"text":"Round skipped!","color": "red"}
execute if score round n matches 5 run title @a actionbar {"text":"Round over!","color": "blue"}

execute if score round n matches 2 run title @a[tag=playing,tag=alive] actionbar [{"text": "Vote on ","color":"red"},{"selector": "@e[tag=stand]","color": "gold"}]
execute if score round n matches 3 run title @a[tag=playing,tag=alive,scores={vote=0,done=0}] actionbar [{"text": "Mandatory: ","color":"blue"},{"selector": "@e[tag=stand]","color": "gold"}]
execute if score round n matches 3 run title @a[tag=playing,tag=alive,scores={vote=2,done=0}] actionbar [{"text": "Optional: ","color":"green"},{"selector": "@e[tag=stand]","color": "gold"}]
execute if score round n matches 3 run title @a[tag=playing,tag=alive,scores={done=1}] actionbar {"text": "Finished!","color":"green"}

execute if score round n matches 2 as @a[tag=playing,tag=alive,scores={vote=1}] run function sh:round/vote/register

execute if score round n matches 2 unless entity @a[tag=playing,tag=alive,scores={vote=0}] run function sh:round/skip

execute if score round n matches 2..3 as @a[tag=playing,tag=alive,scores={done=0}] at @s run function sh:loop/blockcheck
execute if score round n matches 2..3 as @a[tag=playing,tag=alive,scores={done=0}] at @s positioned ~ ~-1 ~ run function sh:loop/blockcheck
