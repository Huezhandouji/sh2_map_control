#圆形粒子
execute unless entity @e[tag=hezi_particle1,type=armor_stand] run summon armor_stand ~ ~1000 ~ {"Tags":["hezi_particle1"]}
kill @e[type=armor_stand,tag=hezi_particle1,scores={loopcnt=180}]
execute as @e[type=armor_stand,tag=hezi_particle1] at @s positioned ^ ^-1000 ^8 run particle dust{"color":16711680,"scale":2}
execute as @e[type=armor_stand,tag=hezi_particle1,limit=1] at @s run rotate @s ~2 ~
scoreboard players add @e[type=armor_stand,tag=hezi_particle1] loopcnt 1
execute as @e[type=armor_stand,tag=hezi_particle1] at @s run function sh2:char/hezi/skill_3/particle