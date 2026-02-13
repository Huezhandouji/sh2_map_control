#影
tp @a[team=shadow] 77 72 -123
#猎影人
tp @a[team=hunter] 76 70 -221

#设置阶段标识
scoreboard players set game_process system 2
#开始第一阶段
function sh2:process_control/battle/sec1/start

#初始化玩家的一些积分板
scoreboard players set @a in_battle 0
scoreboard players set @a trigger_shadow_select_char 0
scoreboard players set @a char_selected 0

scoreboard players set @a char_selected 0

scoreboard players set @a apply_character -1

scoreboard objectives setdisplay below_name SAN

tag @a remove using_hunter_char_select_menu
tag @a remove using_shadow_char_select_menu

#设置本场对局id
scoreboard players add #standard battle_id 1
scoreboard players operation @a battle_id = #standard battle_id