scoreboard players set condition n 1
execute if score round n matches 3 run schedule function sh:round/over 1
execute if score round n matches 2 run schedule function sh:round/vote/over 1
execute if score round n matches 1 run schedule function sh:round/start 1
