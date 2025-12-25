execute unless items entity @s hotbar.0 piglin_head run clear @s piglin_head
execute unless items entity @s hotbar.0 piglin_head anchored eyes run kill @e[type=item,nbt={"Item":{"id":"minecraft:piglin_head"}},distance=..10]
execute unless items entity @s hotbar.0 piglin_head run item replace entity @s hotbar.0 with piglin_head[consumable={"animation":"none","consume_seconds":0,"has_consume_particles":false,"sound":{"sound_id":""}},custom_data={"use_event":{"shadow_deploy_select":true}},item_name="§6配置角色"]

execute as @s[scores={trigger_shadow_select_char=1..1000}] run scoreboard players operation @s char_selected = @s trigger_shadow_select_char
scoreboard players set @s[scores={trigger_shadow_select_char=1000}] char_selected 0




scoreboard players set @s[scores={trigger_shadow_select_char=1002}] page_menu_select_char 2
scoreboard players set @s[scores={trigger_shadow_select_char=1003}] page_menu_select_char 1

tag @s[scores={trigger_shadow_select_char=1001}] add player_execute_close_char_menu
execute as @s[scores={trigger_shadow_select_char=0..},tag=!player_execute_close_char_menu] run function sh2:process_control/battle/char_select/shadow/click_open_interface
scoreboard players set @s[scores={trigger_shadow_select_char=0..}] trigger_shadow_select_char -1
tellraw @s[tag=player_execute_close_char_menu] [{"text":"\n\n\n\n\n\n\n§e菜单已经关闭!"}]
tag @s[tag=player_execute_close_char_menu] remove player_execute_close_char_menu