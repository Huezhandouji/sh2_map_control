execute as @a[scores={respawn_dead=1..}] run scoreboard players set @s respawn_countdown 200
execute as @a[scores={respawn_countdown=0..},team=shadow] at @s run function sh2:process_control/battle/respawn/shadow/cd
execute as @a[scores={respawn_countdown=0..},team=hunter] at @s run function sh2:process_control/battle/respawn/hunter/cd
scoreboard players set @a[scores={respawn_dead=1..}] respawn_dead 0

