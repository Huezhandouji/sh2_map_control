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
#时钟，用来一些需要间隔不止1tick的指令
scoreboard objectives add clock dummy clock
#在一些情况下判断好几个条件
scoreboard objectives add conditions dummy conditions
#用于实现循环的计数
scoreboard objectives add loopcnt dummy loopcnt
#战斗部分
#/特殊值 双方的san 猎影人的能量 影的进化
scoreboard objectives add ENERGY dummy ENERGY
scoreboard objectives add ENERGY_MAX dummy ENERGY_MAX
scoreboard objectives add SAN dummy SAN
scoreboard objectives add SAN_MAX dummy SAN_MAX
scoreboard objectives add san_punish_countdown dummy san_punish_countdown
scoreboard objectives add EVOLUTION dummy EVOLUTION
#/特殊效果倒计时
#//眩晕
scoreboard objectives add faint_time dummy faint_time
#//沉默
scoreboard objectives add silence_time dummy silence_time
#//定身
scoreboard objectives add immobilize_time dummy immobilize_time
#//免控
scoreboard objectives add immune_control_time dummy immune_control_time
#/血量
scoreboard objectives add health health health
#/战斗菜单trigger
scoreboard objectives add trigger_battle_menu trigger trigger_battle_menu
#/建造倒计时
scoreboard objectives add build_countdown dummy build_countdown
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
#/用于判断重生的死亡判断
scoreboard objectives add respawn_dead deathCount respawn_dead
#/重生倒计时
scoreboard objectives add respawn_countdown dummy respawn_countdown
#/猎影人提前部署按钮的trigger
scoreboard objectives add trigger_hunter_fast_back_deploy trigger trigger_hunter_fast_back_deploy

#/检测跨局玩家
scoreboard objectives add battle_id dummy battle_id