scoreboard players set sat n 0
execute store result score sat n run data get entity @s foodSaturationLevel
execute if score sat n matches 0 run effect give @s saturation 1 0 true
