function sh2:events/player_join/detect
execute if score game_process system matches 1 run function sh2:process_control/select_team/running
execute if score game_process system matches 2 run function sh2:process_control/battle/run
function sh2:char/apply_charactor

#每秒倒计时
scoreboard players add second system 1
execute if score second system matches 21 run scoreboard players set second system 0