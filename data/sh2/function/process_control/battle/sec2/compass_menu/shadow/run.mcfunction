#把物品锁第8格子
execute unless items entity @s hotbar.8 compass run clear @s compass[custom_data={"use_event":{"shadow_compass_menu":true}}]
execute unless items entity @s hotbar.8 compass anchored eyes run kill @e[type=item,nbt={"Item":{"id":"minecraft:compass","components":{"minecraft:custom_data":{"use_event":{"shadow_compass_menu":true}}}}},distance=..5]
execute unless items entity @s hotbar.8 compass run item replace entity @s hotbar.8 with compass[consumable={"animation":"none","consume_seconds":0,"has_consume_particles":false,"sound":{"sound_id":""}},custom_data={"use_event":{"shadow_compass_menu":true}},item_name="§d生命识别核心[右键打开战斗菜单]"]


#关掉菜单/点按钮后再次打开菜单
tag @s[scores={trigger_battle_menu=1001}] add player_execute_close_char_menu
tellraw @s[tag=player_execute_close_char_menu] [{"text":"\n\n\n\n\n\n\n§c菜单已关闭"}]
execute if entity @s[tag=!player_execute_close_char_menu,scores={trigger_battle_menu=1..}] run function sh2:process_control/battle/sec2/compass_menu/shadow/main_menu
tag @s[tag=player_execute_close_char_menu] remove player_execute_close_char_menu

#重建影庭
execute positioned -199.5 10 -38.5 if entity @s[distance=..10,scores={trigger_battle_menu=1}] run scoreboard players add @s conditions 1
execute if entity @s[scores={trigger_battle_menu=1}] if score point_status system matches 3 run scoreboard players add @s conditions 1
execute if entity @s[scores={trigger_battle_menu=1}] unless entity @a[scores={build_countdown=0..}] run scoreboard players add @s conditions 1
execute as @s[scores={conditions=3,trigger_battle_menu=1}] at @s run function sh2:process_control/battle/sec2/compass_menu/shadow/start_rebuild_umbracore
tellraw @s[scores={conditions=0..2,trigger_battle_menu=1}] [{"text":"§c无法重建影庭!§e可能是因为你不在据点内,据点不处于中立状态或者[其他队友或者敌人]正在建造"}]
scoreboard players set @s conditions 0

#升级影庭
execute positioned -199.5 10 -38.5 if entity @s[distance=..10,scores={trigger_battle_menu=2}] run scoreboard players add @s conditions 1
execute if entity @s[scores={trigger_battle_menu=2}] if score point_status system matches 1 run scoreboard players add @s conditions 1
execute if entity @s[scores={trigger_battle_menu=2}] unless entity @a[scores={build_countdown=0..}] run scoreboard players add @s conditions 1
execute as @s[scores={conditions=3,trigger_battle_menu=2}] at @s run function sh2:process_control/battle/sec2/compass_menu/shadow/start_upgrade_umbracore
tellraw @s[scores={conditions=0..2,trigger_battle_menu=2}] [{"text":"§c无法升级影庭!§e可能是因为你不在据点内,据点中影庭被摧毁,据点中影庭已经升级或者[其他队友或者敌人]正在建造"}]
scoreboard players set @s conditions 0

#把trigger设为-1
scoreboard players set @s[scores={trigger_battle_menu=1..}] trigger_battle_menu -1