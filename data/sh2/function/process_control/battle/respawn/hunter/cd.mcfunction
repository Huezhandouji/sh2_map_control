#倒计时10秒后传送回部署的地方，可以提前回去
scoreboard players set @s apply_character -1
title @s times 0 40 0
execute if score @s respawn_countdown matches 200 run title @s title "§c一个灵魂的消散"
execute if score @s respawn_countdown matches 160 run title @s title ""
execute if score @s respawn_countdown matches 200 run scoreboard players set @s in_battle 0
execute if score @s respawn_countdown matches 200 run gamemode spectator

scoreboard players operation a calculate = @s respawn_countdown
scoreboard players set num calculate 20
scoreboard players operation a calculate %= num calculate
execute if score a calculate matches 0 run scoreboard players operation b calculate = @s respawn_countdown
execute if score a calculate matches 0 run scoreboard players operation b calculate /= num calculate
execute if score a calculate matches 0 run title @s subtitle [{"text":"§e打开聊天栏来提前返回部署 你将在"},{"score":{"name":"b","objective":"calculate"}},{"text":"§e秒后强制开始重新部署"}]
scoreboard players reset a calculate
scoreboard players reset b calculate
scoreboard players reset num calculate

#快速回去部署
execute if score @s respawn_countdown matches 200 run scoreboard players enable @s trigger_hunter_fast_back_deploy
execute if score @s respawn_countdown matches 200 run tellraw @s [{"text":"§a#####开始重新部署#####"}]
execute if score @s respawn_countdown matches 200 run tellraw @s [{"text":"§e[点击立刻返回部署区域]","hover_event":{"action":"show_text","value":"§a如果你不想等,点击这个按钮立刻返回部署区域"},"click_event":{"action":"run_command","command":"trigger trigger_hunter_fast_back_deploy set 1"}}]
execute if score @s respawn_countdown matches 200 run tellraw @s [{"text":"§7和影需要等待10秒不同,猎影人阵营由于地形与票数的限制,可以立刻返回部署"}]
execute if score @s respawn_countdown matches 200 run tellraw @s [{"text":"§a#####################"}]
execute if score @s trigger_hunter_fast_back_deploy matches 1 run function sh2:process_control/battle/respawn/hunter/done


execute if score @s respawn_countdown matches 0 run function sh2:process_control/battle/respawn/hunter/done
scoreboard players remove @s[scores={respawn_countdown=1..}] respawn_countdown 1 