#影
tp @a[team=shadow] 77 72 -123










#猎影人
tp @a[team=hunter] 76 70 -221

scoreboard players set game_process system 2
function sh2:process_control/battle/sec1/start

scoreboard objectives add in_battle dummy in_battle
scoreboard players set @a in_battle 0
scoreboard objectives add char_selected trigger char_selected
scoreboard players set @a char_selected 0