tellraw @a [{"selector": "@s"},{"text": " was eliminated!","color": "red"}]
tellraw @s {"text": "You ran out of lives, and are now out of the game","color": "dark_red"}
scoreboard players reset @s lives
tag @s remove alive
gamemode spectator @s
function sh:spect/follow
