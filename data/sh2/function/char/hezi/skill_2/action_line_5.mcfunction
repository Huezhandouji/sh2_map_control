execute rotated ~ 0 run function sh2:char/hezi/skill_2/action_single_move
scoreboard players set @s hezi.cd2 160
execute if entity @a[tag=hezi_skill2_hited] run scoreboard players remove @a[tag=hezi] hezi.cd2 120