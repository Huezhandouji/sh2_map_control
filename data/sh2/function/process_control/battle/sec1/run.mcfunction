#部署
#影
execute as @a[team=shadow,scores={in_battle=0}] at @s run function sh2:process_control/battle/sec1/deploy/shadow
execute as @a[team=hunter,scores={in_battle=0}] at @s run function sh2:process_control/battle/sec1/deploy/hunter


execute if score point_status system matches 1 run bossbar set shadow_display name [{"text":""}]