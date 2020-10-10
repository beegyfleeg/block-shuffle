tellraw @s {"text": "You ran out of lives, and are now out of the game","color": "dark_red"}
tag @s remove alive
gamemode spectator @s
function sh:spect/follow
