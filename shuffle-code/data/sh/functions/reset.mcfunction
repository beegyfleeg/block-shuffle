kill @a
gamemode adventure @a
tag @a remove playing
tag @a remove alive
tag @a remove spect

scoreboard players set game n 0

scoreboard objectives setdisplay sidebar

xp set @a 0 levels
xp set @a 0 points

clear @a
effect clear @a

bossbar remove sh:timer

schedule clear sh:timer/decrease

kill @e[tag=stand]

title @a actionbar ""

difficulty peaceful

reload
