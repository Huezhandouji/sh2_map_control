execute if score point_status system matches 1 run function sh2:process_control/battle/sec5_final/point/destorying_phase
execute if score point_status system matches 2 run function sh2:process_control/battle/sec5_final/point/occupying
execute if score second system matches 20 positioned -291.5 8 -110.5 run function sh2:process_control/battle/sec4/point/particle3
execute as @a[team=hunter,scores={in_battle=0}] run function sh2:process_control/battle/sec5_final/deploy/hunter
execute as @a[team=shadow,scores={in_battle=0}] run function sh2:process_control/battle/sec5_final/deploy/shadow