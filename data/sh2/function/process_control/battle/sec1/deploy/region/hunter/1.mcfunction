advancement revoke @s only sh2:use_event/deploy/sec1/hunter/1
#没有选择角色的话就return
execute if score @s char_selected matches 0 run return run tellraw @s [{"text":"§c>>你需要先选择角色和EX技能配置"}]

#如果函数还没有结束，意味着选择了角色
#应用角色 然后传送

spreadplayers -422.5 101.5 0 20 under 11 false @s
title @s times 0 40 0
title @s title ""
title @s subtitle "§a部署成功"
tellraw @s [{"text":"§e#####部署成功#####"}]
tellraw @s [{"text":"§a你在§e后方据点[别墅区]§a部署"}]
function sh2:process_control/battle/sec1/deploy/region/show_char_deployed_text
tellraw @s [{"text":"§a立即加入战斗!"}]
tellraw @s [{"text":"§e#################"}]
scoreboard players operation @s apply_character = @s char_selected

scoreboard players set @s in_battle 1
clear @s