execute if score red_skill1_loop loopcnt matches 25.. run return 1
tag @a[team=hunter,distance=..0.8] add red_skill1_target
scoreboard players add red_skill1_loop loopcnt 1

execute positioned ~ ~1.2 ~ run function sh2:char/red/skill_1/work/particle

execute positioned ^ ^ ^0.2 run function sh2:char/red/skill_1/work/tagging_enemy