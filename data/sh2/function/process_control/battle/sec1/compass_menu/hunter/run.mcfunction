execute unless items entity @s hotbar.8 compass run clear @s compass[custom_data={"use_event":{"hunter_compass_menu":true}}]
execute unless items entity @s hotbar.8 compass anchored eyes run kill @e[type=item,nbt={"Item":{"id":"minecraft:compass","components":{"minecraft:custom_data":{"use_event":{"hunter_compass_menu":true}}}}},distance=..5]
execute unless items entity @s hotbar.8 compass run item replace entity @s hotbar.8 with compass[consumable={"animation":"none","consume_seconds":0,"has_consume_particles":false,"sound":{"sound_id":""}},custom_data={"use_event":{"hunter_compass_menu":true}},item_name="§b追踪器[右键打开战斗菜单]"]

execute positioned 5323 8 5373 if entity @s[distance=..10,scores={trigger_battle_menu=1}] run scoreboard players add @s conditions 1
execute if entity @s[scores={trigger_battle_menu=1}] if score point_status system matches 3 run scoreboard players add @s conditions 1
execute if entity @s[scores={trigger_battle_menu=1}] unless entity @a[scores={build_countdown=0..}] run scoreboard players add @s conditions 1
execute as @s[scores={conditions=3,trigger_battle_menu=1}] at @s run function sh2:process_control/battle/sec1/compass_menu/hunter/start_build_base
tellraw @s[scores={conditions=0..2,trigger_battle_menu=1}] [{"text":"§c无法建造地基! 可能是因为你不在据点内,据点不处于中立状态或者其他人正在建造地基"}]
scoreboard players set @s conditions 0

execute if score @s trigger_battle_menu matches 1001 run tellraw @s [{"text":"\n\n\n\n\n\n\n§c菜单已关闭"}]
scoreboard players set @s[scores={trigger_battle_menu=1..}] trigger_battle_menu -1