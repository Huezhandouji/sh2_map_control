scoreboard players set battle_phase system 1
#影§
kill @e[type=text_display,tag=sec1_shadow]
summon text_display 71 74 -127 {"text":[{"text":"§4猎影人"}],"billboard":"center","see_through":true,Tags:["sec1_shadow","1"]}
summon text_display 83 74 -128 {"text":[{"text":"§e防守据点"}],"billboard":"center","see_through":true,Tags:["sec1_shadow","2"]}
summon text_display 84 73.5 -128 {"text":[{"text":"§7[未建成前线影庭]"}],"billboard":"center","see_through":true,Tags:["sec1_shadow","2_"]}
summon text_display 83 74 -134 {"text":[{"text":"§2部署点"}],"billboard":"center","see_through":true,Tags:["sec1_shadow","3"]}
summon text_display 83 73.5 -134 {"text":[{"text":"§d[右键部署]"}],"billboard":"center","see_through":true,Tags:["sec1_shadow","3_"]}

summon text_display 71 74 -134 {"text":[{"text":"§7后方区域"}],"billboard":"center","see_through":true,Tags:["sec1_shadow","4"]}
summon text_display 71 74 -138 {"text":[{"text":"§7后方区域"}],"billboard":"center","see_through":true,Tags:["sec1_shadow","5"]}
summon text_display 81 77 -140 {"text":[{"text":"§7后方区域-主庭位置"}],"billboard":"center","see_through":true,Tags:["sec1_shadow","6"]}
execute as @e[tag=sec1_shadow,type=text_display,tag=!2_,tag=!3_] run data modify entity @s transformation.scale set value [2,2,2]

#猎影人
kill @e[type=text_display,tag=sec1_hunter]
summon text_display 58 72 -218 {"text":[{"text":"§2部署点"}],"billboard":"center","see_through":true,Tags:["sec1_hunter","1"]}
summon text_display 69 72 -218 {"text":[{"text":"§e进攻据点"}],"billboard":"center","see_through":true,Tags:["sec1_hunter","2"]}
summon text_display 69 72 -224 {"text":[{"text":"§4影-部署点"}],"billboard":"center","see_through":true,Tags:["sec1_hunter","3"]}
summon text_display 57 72 -224 {"text":[{"text":"§7影-后方区域"}],"billboard":"center","see_through":true,Tags:["sec1_hunter","4"]}
summon text_display 58 72 -228 {"text":[{"text":"§7影-后方区域"}],"billboard":"center","see_through":true,Tags:["sec1_hunter","5"]}
summon text_display 67 75 -230 {"text":[{"text":"§7影-主庭"}],"billboard":"center","see_through":true,Tags:["sec1_hunter","6"]}
execute as @e[tag=sec1_hunter,type=text_display] run data modify entity @s transformation.scale set value [2,2,2]

scoreboard players set hunter_ticket system 50
scoreboard players set hunter_stronghold_health system 0
scoreboard players set hunter_base_build system 0
scoreboard players set shadow_front_umbracore_health system 0
scoreboard players add shadow_front_umbracore_build system 0
bossbar add ticket_display ticket_display
bossbar set ticket_display visible true
bossbar set ticket_display players @a
bossbar set ticket_display color white
bossbar set ticket_display style progress
bossbar set ticket_display max 100
bossbar set ticket_display value 100

bossbar add shadow_display shadow_display
bossbar set shadow_display color white
bossbar set shadow_display visible true
bossbar set shadow_display players @a
bossbar set shadow_display max 100