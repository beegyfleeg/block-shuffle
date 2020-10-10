scoreboard players set @s vote 2
tellraw @a [{"selector": "@s"},{"text": " voted to skip","color": "red"}]
execute as @a at @s run playsound block.note_block.snare master @s
