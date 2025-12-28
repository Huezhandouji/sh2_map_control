#影
tp @a[team=shadow] 77 72 -123




#猎影人
tp @a[team=hunter] 76 70 -221

scoreboard players set game_process system 2
function sh2:process_control/battle/sec1/start



scoreboard players set @a in_battle 0
scoreboard players set @a trigger_shadow_select_char 0
scoreboard players set @a char_selected 0