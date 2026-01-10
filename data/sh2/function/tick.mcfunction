function sh2:events/run
execute if score game_process system matches 1 run function sh2:process_control/select_team/running
execute if score game_process system matches 2 run function sh2:process_control/battle/run
function sh2:char/run
function sh2:special_effects/run
#每秒倒计时
scoreboard players add second system 1
execute if score second system matches 21 run scoreboard players set second system 0
#时钟
scoreboard players add 1s clock 1
execute if score 1s clock matches 21 run scoreboard players set 1s clock 0
scoreboard players add 2s clock 1
execute if score 2s clock matches 41 run scoreboard players set 2s clock 0