scoreboard players set battle_phase system 0
scoreboard players set point_status system 0

title @a times 0 200 0
title @a[team=hunter] title [{"text":"我方耗尽所有增援","color":"red"}]
title @a[team=hunter] subtitle [{"text":"敌方团队 影 获得了胜利","color":"red"}]

title @a[team=shadow] title [{"text":"我们成功阻止了敌方的进攻","color":"gold"}]
title @a[team=shadow] subtitle [{"text":"友方团队 影 获得了胜利","color":"gold"}]

playsound sh2:extrabgm.plan master @a 0 10000000000 0 100000000000

scoreboard players set @a apply_character -1
scoreboard players set @a in_battle 0
team join spectator @a

function sh2:process_control/select_team/start
tp @a 0.5 51.00 0.5

tag @a remove using_hunter_char_select_menu
tag @a remove using_shadow_char_select_menu

clear @a