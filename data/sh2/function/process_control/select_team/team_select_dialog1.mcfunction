advancement revoke @s only sh2:use_event/team_select/team_select0
#存入对话框无法获取的文本，然后使用宏打开对话框
execute store result storage sh2:dialog select_team.shadow_population int 1 run scoreboard players get shadow_population system
execute store result storage sh2:dialog select_team.hunter_population int 1 run scoreboard players get hunter_population system
execute store result storage sh2:dialog select_team.spectator_population int 1 run scoreboard players get spectator_population system

scoreboard players enable @s team_select_trigger
function sh2:process_control/select_team/team_select_dialog2 with storage sh2:dialog select_team