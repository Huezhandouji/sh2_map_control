scoreboard players set game_start_countdown system -1
scoreboard players set game_start_countdown_started system 0
scoreboard players set @a ready 0

scoreboard players set game_process system 2
kill @e[tag=team_display]

clear @a

function sh2:process_control/battle/start