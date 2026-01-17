advancement revoke @s only sh2:use_event/compass_menu/shadow
execute if score battle_phase system matches 1 run function sh2:process_control/battle/sec1/compass_menu/shadow/clicked
execute if score battle_phase system matches 2 run function sh2:process_control/battle/sec2/compass_menu/shadow/clicked
execute if score battle_phase system matches 3 run function sh2:process_control/battle/sec3/compass_menu/shadow/clicked
execute if score battle_phase system matches 4 run function sh2:process_control/battle/sec4/compass_menu/shadow/clicked