
execute unless entity @e[tag=front_umbracore_1_particle,type=armor_stand] run summon armor_stand ~ ~1000 ~ {"Tags":["front_umbracore_1_particle"]}
kill @e[type=armor_stand,tag=front_umbracore_1_particle,scores={loopcnt=180}]
execute as @e[type=armor_stand,tag=front_umbracore_1_particle] at @s positioned ^ ^-1002 ^10 run particle dust{"color":1558810,"scale":2}
execute as @e[type=armor_stand,tag=front_umbracore_1_particle,limit=1] at @s run rotate @s ~2 ~
scoreboard players add @e[type=armor_stand,tag=front_umbracore_1_particle] loopcnt 1
execute as @e[type=armor_stand,tag=front_umbracore_1_particle] at @s run function sh2:process_control/battle/sec3/point/particle3