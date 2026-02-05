execute if score point_status system matches 1 run function sh2:process_control/battle/sec5_final/point/destorying_phase
execute if score point_status system matches 2 run function sh2:process_control/battle/sec5_final/point/occupying
execute if score second system matches 20 positioned -276.5 59 -149.5 run function sh2:process_control/battle/sec4/point/particle3
execute as @a[team=hunter,scores={in_battle=0}] run function sh2:process_control/battle/sec5_final/deploy/hunter
execute as @a[team=shadow,scores={in_battle=0}] run function sh2:process_control/battle/sec5_final/deploy/shadow

#在主庭受到第一次攻击后开始循环播放bgm
execute if score flag_main_umbracore_damaged system matches 0 if score shadow_main_umbracore_destory_value system matches ..499 run scoreboard players set flag_main_umbracore_damaged system 1
execute if score flag_main_umbracore_damaged system matches 1 run function sh2:process_control/battle/sec5_final/first_play_bgm
execute if score flag_main_umbracore_damaged system matches 2 if stopwatch final_bgm_timer 290.. run function sh2:process_control/battle/sec5_final/play_bgm_again