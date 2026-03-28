scoreboard players set red_skill1_loop loopcnt 0
function sh2:char/red/skill_1/work/tagging_enemy
scoreboard players reset red_skill1_loop loopcnt
execute if entity @a[tag=red_skill1_target] run effect give @s instant_health 1 0 true
execute as @a[tag=red_skill1_target] run damage @s 8 sh2:normal by @a[tag=red,limit=1]
tag @a[tag=red_skill1_target] remove red_skill1_target

playsound entity.zombie.attack_wooden_door