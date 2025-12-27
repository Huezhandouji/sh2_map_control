#部署
#影
execute as @a[team=shadow,scores={in_battle=0}] at @s run function sh2:process_control/battle/sec1/deploy/shadow
execute as @a[team=hunter,scores={in_battle=0}] at @s run function sh2:process_control/battle/sec1/deploy/hunter

execute if score second system matches 20 positioned 5323 8 5373 run function sh2:process_control/battle/sec1/point/particle3

execute if score point_status system matches 1 run bossbar set shadow_display name [{"text":"§d前线影庭§7[未升级]§d 摧毁值: "},{"score":{"name":"shadow_front_umbracore_destory_value","objective":"system"}},{"text":" / 200"}]
execute store result bossbar minecraft:shadow_display value run scoreboard players get shadow_front_umbracore_destory_value system
execute if score second system matches 20 if score point_status system matches 1..2 positioned 5324 9 5374 run function sh2:process_control/battle/sec1/point/particle

execute if score point_status system matches 2 run bossbar set shadow_display name [{"text":"§d前线影庭§c[已升级]§d 摧毁值: "},{"score":{"name":"shadow_front_umbracore_destory_value","objective":"system"}},{"text":" / 200"}]
execute if score second system matches 20 if score point_status system matches 2 positioned 5324 9 5374 run particle explosion
execute if score second system matches 20 if score point_status system matches 2 positioned 5324 12 5374 run particle explosion

execute if score point_status system matches 1..2 if score shadow_front_umbracore_destory_value system matches ..0 run function sh2:process_control/battle/sec1/point/umbracore_destory

#指南针菜单
# 猎影人
execute as @a[scores={in_battle=1},team=hunter] at @s run function sh2:process_control/battle/sec1/compass_menu/hunter/run

#猎影人建造地基
execute as @a[scores={build_countdown=0..200},team=hunter] at @s run function sh2:process_control/battle/sec1/point/building_base