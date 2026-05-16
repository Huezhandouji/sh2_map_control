execute as @a[tag=red] at @s run function sh2:char/red/skill_3/give_effect
execute unless score @a[tag=red,limit=1] SAN matches 1.. run return fail
schedule function sh2:char/red/skill_3/drive_to_loop 1s