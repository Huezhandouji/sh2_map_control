scoreboard players set battle_phase system 5
#影§
kill @e[type=text_display,tag=sec1_shadow]
kill @e[type=text_display,tag=sec2_shadow]
kill @e[type=text_display,tag=sec3_shadow]
kill @e[type=text_display,tag=sec4_shadow]
kill @e[type=text_display,tag=sec5_shadow]
summon text_display 71 73.5 -127 {"text":[{"text":"§c别墅区\n敌方控制"}],"billboard":"center","see_through":true,Tags:["sec5_shadow","1"]}
summon text_display 83 74.5 -128 {"text":[{"text":"§c小型失去\n敌方控制"}],"billboard":"center","see_through":true,Tags:["sec5_shadow","2"]}
summon text_display 85 73.5 -134 {"text":[{"text":"§c暗影教堂\n敌方控制"}],"billboard":"center","see_through":true,Tags:["sec5_shadow","3"]}
summon text_display 71 74 -134 {"text":[{"text":"§c建筑工地\n敌方控制"}],"billboard":"center","see_through":true,Tags:["sec5_shadow","4"]}
summon text_display 71 74 -138 {"text":[{"text":"§c酒店\n敌方控制"}],"billboard":"center","see_through":true,Tags:["sec5_shadow","5"]}
summon text_display 79.5 74 -139.5 {"text":[{"text":"§a写字楼-主庭位置\n防守据点!"}],"billboard":"center","see_through":true,Tags:["sec5_shadow","6"]}
summon text_display 79.5 76 -139.5 {"text":[{"text":"ccb"}],"billboard":"center","see_through":true,Tags:["sec5_shadow","6_"]}
execute as @e[tag=sec5_shadow,type=text_display,tag=!6_] run data modify entity @s transformation.scale set value [2,2,2]

#猎影人
kill @e[type=text_display,tag=sec1_hunter]
kill @e[type=text_display,tag=sec2_hunter]
kill @e[type=text_display,tag=sec3_hunter]
kill @e[type=text_display,tag=sec4_hunter]
kill @e[type=text_display,tag=sec5_hunter]
summon text_display 58 72 -218 {"text":[{"text":"§a别墅区\n友方控制"}],"billboard":"center","see_through":true,Tags:["sec5_hunter","1"]}
summon text_display 69 72 -218 {"text":[{"text":"§a小型社区\n友方控制"}],"billboard":"center","see_through":true,Tags:["sec5_hunter","2"]}
summon text_display 69 72 -224 {"text":[{"text":"§a暗影教堂\n友方控制"}],"billboard":"center","see_through":true,Tags:["sec5_hunter","3"]}
summon text_display 57 72 -224 {"text":[{"text":"§a建筑工地\n友方控制"}],"billboard":"center","see_through":true,Tags:["sec5_hunter","4"]}
summon text_display 58 72 -228 {"text":[{"text":"§a酒店\n友方控制"}],"billboard":"center","see_through":true,Tags:["sec5_hunter","5"]}
summon text_display 65.5 72 -229.5 {"text":[{"text":"§c写字楼-主庭位置\n进攻据点!"}],"billboard":"center","see_through":true,Tags:["sec5_hunter","6"]}
summon text_display 65.5 74 -229.5 {"text":[{"text":"ccb"}],"billboard":"center","see_through":true,Tags:["sec5_hunter","6_"]}
execute as @e[tag=sec5_hunter,type=text_display,tag=!6_] run data modify entity @s transformation.scale set value [2,2,2]

#开始的猎影人票数，主庭的摧毁值，猎影人占领值
scoreboard players set hunter_stronghold_occupy_value system 0
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
bossbar set shadow_display max 500

#据点状态，1代表有影庭，2炸了
scoreboard players set point_status system 1

#放置结构1
place template sec5_1 -286 55 -159 none none 1 0 strict
kill @e[type=item]

scoreboard players set flag_main_umbracore_damaged system 0