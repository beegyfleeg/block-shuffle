tellraw @a {"text": "Check for a bonus chest beneath your feet\n","color": "blue"}
execute at @a run clone 0 0 0 0 0 0 ~ ~-1 ~
execute at @a align xyz run particle firework ~.5 ~-0.5 ~.5 0 0 0 0.6 50
