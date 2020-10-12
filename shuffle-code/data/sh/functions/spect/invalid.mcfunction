tellraw @s {"text": "You are spectating this game\nWait until this game ends to join","color": "red"}
tag @s add spect
tag @s remove playing
tag @s remove alive
gamemode spectator
function sh:spect/follow

bossbar set sh:timer players @a
