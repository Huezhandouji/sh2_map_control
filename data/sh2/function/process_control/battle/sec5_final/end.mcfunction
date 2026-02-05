scoreboard players set battle_phase system 0
scoreboard players set point_status system 0

title @a times 0 200 0
title @a[team=hunter] title [{"text":"友方成功肃清并占领了全部据点!","color":"gold"}]
title @a[team=hunter] subtitle [{"text":"友方团队 猎影人 获得了胜利","color":"green"}]

title @a[team=shadow] title [{"text":"我们没能够阻止敌方的攻势!","color":"red"}]
title @a[team=shadow] subtitle [{"text":"敌方团队 猎影人 获得了胜利","color":"red"}]

stopwatch remove minecraft:final_bgm_timer
stopsound @a
playsound sh2:extrabgm.plan master @a 0 10000000000 0 100000000000

scoreboard players set @a apply_character -1
scoreboard players set @a in_battle 0
team join spectator @a

function sh2:process_control/select_team/start
tp @a 0.5 51.00 0.5

tag @a remove using_hunter_char_select_menu
tag @a remove using_shadow_char_select_menu