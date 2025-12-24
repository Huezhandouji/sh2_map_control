#部署
#影
execute as @a[team=shadow,scores={in_battle=0}] at @s run function sh2:process_control/battle/sec1/deploy/shadow



#建筑判定
execute if score hunter_base_build system matches 0 run bossbar set minecraft:ticket_display name [{"text":"§e猎影人TICKET: "},{"score":{"name":"hunter_ticket","objective":"system"}},{"text":" §e//§7 进攻据点中没有地基"}]
execute if score hunter_base_build system matches 200 run bossbar set minecraft:ticket_display name [{"text":"§e猎影人TICKET: "},{"score":{"name":"hunter_ticket","objective":"system"}},{"text":" §e//§a 已在进攻据点建成地基 // §6前线据点建造值: "},{"score":{"name":"hunter_stronghold_health","objective":"system"}}]
execute if score hunter_base_build system matches 200 run function sh2:process_control/battle/sec1/front_stronghold/active
execute if score hunter_base_build system matches 0 run bossbar set minecraft:ticket_display color white
execute store result bossbar minecraft:ticket_display value run scoreboard players get hunter_stronghold_health system
execute if score hunter_base_build system matches -1 run function sh2:process_control/battle/sec1/front_stronghold/effect

execute if score shadow_front_umbracore_build system matches 200 run function sh2:process_control/battle/sec1/front_umbracore/activate
execute store result bossbar shadow_display value run scoreboard players get shadow_front_umbracore_health system
execute if score shadow_front_umbracore_build system matches 0.. run bossbar set minecraft:shadow_display name [{"text":"§7影阵营还未建成前线影庭"}]
execute if score shadow_front_umbracore_build system matches -1 run bossbar set minecraft:shadow_display name [{"text":"§d前线影庭存在 // 摧毁值: "},{"score":{"name":"shadow_front_umbracore_health","objective":"system"}},{"text":"/100"}]
execute if score shadow_front_umbracore_build system matches 200 run bossbar set shadow_display color purple
execute if score shadow_front_umbracore_build system matches 0 run bossbar set shadow_display color white
execute if score shadow_front_umbracore_health system matches 1.. run function sh2:process_control/battle/sec1/front_umbracore/effect
execute if score shadow_front_umbracore_build system matches -1 if score shadow_front_umbracore_health system matches ..0 run function sh2:process_control/battle/sec1/front_umbracore/destory