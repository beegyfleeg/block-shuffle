effect clear @a
clear @a
replaceitem entity @a hotbar.0 stone_sword{Unbreakable:1b}
replaceitem entity @a hotbar.1 stone_axe{Unbreakable:1b}
replaceitem entity @a hotbar.2 stone_pickaxe{Unbreakable:1b}
replaceitem entity @a armor.chest chainmail_chestplate{Unbreakable:1b}

gamerule sendCommandFeedback false
gamerule keepInventory true
gamerule spectatorsGenerateChunks false
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule showDeathMessages false
gamerule announceAdvancements false

scoreboard objectives add n dummy
scoreboard objectives add lives dummy "Lives"
scoreboard objectives add gid dummy
scoreboard objectives add vote trigger
scoreboard objectives add done dummy

scoreboard objectives setdisplay sidebar lives

execute unless score gid n matches 1.. run scoreboard players set gid n 0
execute unless score rng n matches 1.. run scoreboard players set rng n 1
scoreboard players add gid n 1

advancement revoke @a everything

recipe give @a *

time set 0

scoreboard players set game n 1
scoreboard players set @a lives 5
scoreboard players set @a gid 0
execute as @a run scoreboard players operation @s gid = gid n

tag @a remove spect
tag @a add playing
tag @a add alive

effect give @a saturation 999999 255 true
effect give @a instant_health 1 7 true

schedule clear sh:loop
function sh:loop

gamemode survival @a

xp set @a 0 levels
xp set @a 0 points


bossbar add sh:timer "Timer"
bossbar set sh:timer players @a
bossbar set sh:timer style notched_6

forceload remove all
forceload add 0 0 5 5
summon armor_stand 1 1 1
execute positioned 1 1 1 run tag @e[sort=nearest,limit=1] add stand
fill 0 0 0 2 3 2 bedrock

title @a times 3 15 2

difficulty normal

tp @a @r
execute as @a at @s run spawnpoint

function sh:prep
