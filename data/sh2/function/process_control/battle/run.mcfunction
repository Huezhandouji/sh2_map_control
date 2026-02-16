execute if score battle_phase system matches 1 run function sh2:process_control/battle/sec1/run
execute if score battle_phase system matches 2 run function sh2:process_control/battle/sec2/run
execute if score battle_phase system matches 3 run function sh2:process_control/battle/sec3/run
execute if score battle_phase system matches 4 run function sh2:process_control/battle/sec4/run
execute if score battle_phase system matches 5 run function sh2:process_control/battle/sec5_final/run
function sh2:process_control/battle/respawn/run

#进入战斗后移除使用菜单中标签，防止重复弹出
tag @a[scores={in_battle=1},tag=using_shadow_char_select_menu] remove using_shadow_char_select_menu
tag @a[scores={in_battle=1},tag=using_hunter_char_select_menu] remove using_hunter_char_select_menu

#检测跨局玩家
execute as @a unless score @s battle_id = #standard battle_id run function sh2:process_control/battle/action_cross_battle_player