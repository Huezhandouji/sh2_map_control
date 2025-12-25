#记录系统所有有用的数据
scoreboard objectives add system dummy system
#用于临时计算
scoreboard objectives add calculate dummy calculate
#监测玩家退出
scoreboard objectives add player_leave custom:leave_game player_leave
#准备阶段用的
scoreboard objectives add ready dummy ready
scoreboard players set game_start_countdown_started system 0

#三个阵营
team add shadow
team add hunter
team add spectator
team modify shadow prefix [{"text":"[shadow]","color":"dark_purple"}]
team modify hunter prefix [{"text":"[hunter]","color":"yellow"}]
team modify spectator prefix [{"text":"(spectator)","color":"gray"}]
#没啥用
scoreboard objectives add player_display dummy player_display
#准备阶段选队用trigger
scoreboard objectives add team_select_trigger trigger team_selecte_trigger
#角色系统
scoreboard objectives add apply_character dummy apply_charactor
scoreboard objectives add character dummy character

#用于实现循环的计数
scoreboard objectives add loopcnt dummy loopcnt
#战斗部分
#/是否在战场里
scoreboard objectives add in_battle dummy in_battle
#/影选角色
scoreboard objectives add trigger_shadow_select_char trigger trigger_shadow_select_char
#/选角色公用的
scoreboard objectives add page_menu_select_char dummy page_menu_select_char
scoreboard objectives add ex_selected dummy ex_selected
#/猎影人选角色
scoreboard objectives add trigger_hunter_select_char trigger trigger_hunter_select_char
#/选择的角色
scoreboard objectives add char_selected dummy char_selected
tellraw @a [{"text":">>地图配套数据包已经加载","color":"yellow"}]