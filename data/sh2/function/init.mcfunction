scoreboard objectives add system dummy system
scoreboard objectives add calculate dummy calculate
scoreboard objectives add player_leave custom:leave_game player_leave

scoreboard objectives add ready dummy ready
scoreboard players set game_start_countdown_started system 0

team add shadow
team add hunter
team add spectator
team modify shadow prefix [{"text":"[shadow]","color":"dark_purple"}]
team modify hunter prefix [{"text":"[hunter]","color":"yellow"}]
team modify spectator prefix [{"text":"(spectator)","color":"gray"}]
scoreboard objectives add player_display dummy player_display
scoreboard objectives setdisplay list player_display

scoreboard objectives add team_select_trigger trigger team_selecte_trigger

scoreboard objectives add apply_character dummy apply_charactor
scoreboard objectives add character dummy character
tellraw @a [{"text":">>地图配套数据包已经加载","color":"yellow"}]