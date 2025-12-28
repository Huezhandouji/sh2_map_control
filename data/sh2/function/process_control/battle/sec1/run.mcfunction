#部署区域的文本展示实体
execute if score point_status system matches 1 run data modify entity @e[type=text_display,tag=sec1_shadow,tag=2_,limit=1] text set value [{"text":"§d前线影庭§7[未升级]\n§d摧毁值"},{"score":{"name":"shadow_front_umbracore_destory_value","objective":"system"}},{"text":"\n§a可以部署"}]
execute if score point_status system matches 2 run data modify entity @e[type=text_display,tag=sec1_shadow,tag=2_,limit=1] text set value [{"text":"§d前线影庭§a[已升级]\n§d摧毁值"},{"score":{"name":"shadow_front_umbracore_destory_value","objective":"system"}},{"text":"\n§a可以部署"}]
execute if score point_status system matches 1..2 run data modify entity @e[type=text_display,tag=sec1_shadow,tag=2,limit=1] text set value [{"text":"§a防守据点[友方控制]"}]
execute if score point_status system matches 3 run data modify entity @e[type=text_display,tag=sec1_shadow,tag=2,limit=1] text set value [{"text":"§e防守据点[中立]"}]
execute if score point_status system matches 3 run data modify entity @e[type=text_display,tag=sec1_shadow,tag=2_,limit=1] text set value [{"text":"§e中立状态"}]
execute if score point_status system matches 4 run data modify entity @e[type=text_display,tag=sec1_shadow,tag=2,limit=1] text set value [{"text":"§c防守据点[失去完全控制]"}]
execute if score point_status system matches 4 run data modify entity @e[type=text_display,tag=sec1_shadow,tag=2_,limit=1] text set value [{"text":"§c敌方地基\n§c占领值"},{"score":{"name":"hunter_stronghold_occupy_value","objective":"system"}},{"text":"/100\n§c无法部署"}]


#部署
#影
execute as @a[team=shadow,scores={in_battle=0}] at @s run function sh2:process_control/battle/sec1/deploy/shadow
execute as @a[team=hunter,scores={in_battle=0}] at @s run function sh2:process_control/battle/sec1/deploy/hunter

#区域状态
execute if score second system matches 20 positioned 5323 8 5373 run function sh2:process_control/battle/sec1/point/particle3

execute if score point_status system matches 1 run bossbar set shadow_display name [{"text":"§d前线影庭§7[未升级]§d 摧毁值: "},{"score":{"name":"shadow_front_umbracore_destory_value","objective":"system"}},{"text":" / 200"}]
execute store result bossbar minecraft:shadow_display value run scoreboard players get shadow_front_umbracore_destory_value system
execute if score second system matches 20 if score point_status system matches 1..2 positioned 5324 9 5374 run function sh2:process_control/battle/sec1/point/particle

execute if score point_status system matches 2 run bossbar set shadow_display name [{"text":"§d前线影庭§c[已升级]§d 摧毁值: "},{"score":{"name":"shadow_front_umbracore_destory_value","objective":"system"}},{"text":" / 200"}]
execute if score second system matches 20 if score point_status system matches 2 positioned 5324 9 5374 run particle explosion
execute if score second system matches 20 if score point_status system matches 2 positioned 5324 12 5374 run particle explosion

execute if score point_status system matches 1..2 if score shadow_front_umbracore_destory_value system matches ..0 run function sh2:process_control/battle/sec1/point/umbracore_destory

bossbar set hunter_display name [{"text":"§e猎影人TICKET数量 "},{"score":{"name":"hunter_ticket","objective":"system"}}]
#指南针菜单
# 猎影人
execute as @a[scores={in_battle=1},team=hunter] at @s run function sh2:process_control/battle/sec1/compass_menu/hunter/run
# 影
execute as @a[scores={in_battle=1},team=shadow] at @s run function sh2:process_control/battle/sec1/compass_menu/shadow/run

#猎影人建造地基
execute if score point_status system matches 3 as @a[scores={build_countdown=0..200},team=hunter] at @s run function sh2:process_control/battle/sec1/point/building_base

execute if score point_status system matches 4 run function sh2:process_control/battle/sec1/point/occupying
#影重建前线影庭
execute if score point_status system matches 3 as @a[scores={build_countdown=0..200},team=shadow] at @s run function sh2:process_control/battle/sec1/point/rebuilding_umbracore
#影升级前线影庭
execute if score point_status system matches 1 as @a[scores={build_countdown=0..200},team=shadow] at @s run function sh2:process_control/battle/sec1/point/upgrading_umbracore