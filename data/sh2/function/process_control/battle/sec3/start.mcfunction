scoreboard players set battle_phase system 3
#影§
kill @e[type=text_display,tag=sec1_shadow]
kill @e[type=text_display,tag=sec2_shadow]
kill @e[type=text_display,tag=sec3_shadow]
summon text_display 71 73.5 -127 {"text":[{"text":"§c别墅区\n敌方控制"}],"billboard":"center","see_through":true,Tags:["sec3_shadow","1"]}
summon text_display 83 74.5 -128 {"text":[{"text":"§c小型失去\n敌方控制"}],"billboard":"center","see_through":true,Tags:["sec3_shadow","2"]}
summon text_display 85 73.5 -134 {"text":[{"text":"§c暗影教堂\n敌方控制"}],"billboard":"center","see_through":true,Tags:["sec3_shadow","3"]}
summon text_display 71 74 -134 {"text":[{"text":"§a防守据点"}],"billboard":"center","see_through":true,Tags:["sec3_shadow","4"]}
summon text_display 71 75 -134 {"text":[{"text":"§d前线影庭§7[未升级]\n§a可以部署"}],"billboard":"center","see_through":true,Tags:["sec3_shadow","4_"]}
summon text_display 71 74 -138 {"text":[{"text":"§a酒店\n友方控制"}],"billboard":"center","see_through":true,Tags:["sec3_shadow","5"]}
summon text_display 81 77 -140 {"text":[{"text":"§a写字楼-主庭位置\n友方控制"}],"billboard":"center","see_through":true,Tags:["sec3_shadow","6"]}
execute as @e[tag=sec3_shadow,type=text_display,tag=!4_] run data modify entity @s transformation.scale set value [2,2,2]

#猎影人
kill @e[type=text_display,tag=sec1_hunter]
kill @e[type=text_display,tag=sec2_hunter]
kill @e[type=text_display,tag=sec3_hunter]
summon text_display 58 72 -218 {"text":[{"text":"§a别墅区\n友方控制"}],"billboard":"center","see_through":true,Tags:["sec3_hunter","1"]}
summon text_display 69 72 -218 {"text":[{"text":"§a小型社区\n友方控制"}],"billboard":"center","see_through":true,Tags:["sec3_hunter","2"]}
summon text_display 69 72 -224 {"text":[{"text":"§a暗影教堂\n友方控制"}],"billboard":"center","see_through":true,Tags:["sec3_hunter","3"]}
summon text_display 57 72 -224 {"text":[{"text":"§e进攻据点"}],"billboard":"center","see_through":true,Tags:["sec3_hunter","4"]}
summon text_display 57 73 -224 {"text":[{"text":"§c前线影庭§7[未升级]\n§c进攻"}],"billboard":"center","see_through":true,Tags:["sec3_hunter","4_"]}
summon text_display 58 72 -228 {"text":[{"text":"§c酒店\n敌方控制"}],"billboard":"center","see_through":true,Tags:["sec3_hunter","5"]}
summon text_display 67 75 -230 {"text":[{"text":"§c写字楼-主庭位置\n敌方控制"}],"billboard":"center","see_through":true,Tags:["sec3_hunter","6"]}
execute as @e[tag=sec3_hunter,type=text_display,tag=!4_] run data modify entity @s transformation.scale set value [2,2,2]

#开始的猎影人票数，前线影庭和主庭的摧毁值，猎影人占领值
scoreboard players set hunter_stronghold_occupy_value system 0
scoreboard players set shadow_front_umbracore_destory_value system 100
bossbar add hunter_display hunter_display
bossbar set hunter_display visible true
bossbar set hunter_display players @a
bossbar set hunter_display color yellow
bossbar set hunter_display style progress
bossbar set hunter_display max 100
bossbar set hunter_display value 100

bossbar add shadow_display shadow_display
bossbar set shadow_display color purple
bossbar set shadow_display visible true
bossbar set shadow_display players @a
bossbar set shadow_display max 200

#据点状态，1代表有影庭，2有升级的影庭，3空置没有人和影的东西，4有人的地基, 5完全占领
scoreboard players set point_status system 1

#放置结构1
place template sh2:sec3_1 -473 -2 -54 none none 1 0 strict
kill @e[type=item]
