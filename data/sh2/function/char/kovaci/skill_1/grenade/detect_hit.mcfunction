particle dust{"color":0,"scale":1} ~ ~ ~ 0.5 0.5 0.5 1 5 force


tag @s add explode
execute if block ~ ~ ~0.2 #sh2:bullet_passable if block ~ ~0.2 ~ #sh2:bullet_passable \
if block ~0.2 ~ ~ #sh2:bullet_passable if block ~ ~ ~0.2 #sh2:bullet_passable if block ~ ~ ~-0.2 #sh2:bullet_passable \
if block ~ ~-0.2 ~ #sh2:bullet_passable if block ~-0.2 ~ ~ #sh2:bullet_passable if block ~ ~ ~ #sh2:bullet_passable run tag @s remove explode
execute if entity @s[tag=explode] run function sh2:char/kovaci/skill_1/grenade/explode

