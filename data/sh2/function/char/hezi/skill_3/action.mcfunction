playsound entity.zombie.break_wooden_door master @a ~ ~ ~
particle explosion
execute positioned ~ ~1 ~ run function sh2:char/hezi/skill_3/particle
execute positioned ~ ~1 ~ run function sh2:char/hezi/skill_3/particle2
execute as @a[distance=2..8,team=shadow] run function sh2:char/hezi/skill_3/action_line_4
scoreboard players set @s hezi.cd3 240