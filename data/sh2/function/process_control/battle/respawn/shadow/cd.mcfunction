#倒计时10秒后传送回部署的地方
scoreboard players set @s apply_character -1
title @s times 0 40 0
execute if score @s respawn_countdown matches 200 run scoreboard players set @s char_selected 0
execute if score @s respawn_countdown matches 200 run clear @s
execute if score @s respawn_countdown matches 200 run title @s title "§c你死了!"
execute if score @s respawn_countdown matches 160 run title @s title ""
execute if score @s respawn_countdown matches 200 run scoreboard players set @s in_battle 0
execute if score @s respawn_countdown matches 200 run gamemode spectator

scoreboard players operation a calculate = @s respawn_countdown
scoreboard players set num calculate 20
scoreboard players operation a calculate %= num calculate
execute if score a calculate matches 0 run scoreboard players operation b calculate = @s respawn_countdown
execute if score a calculate matches 0 run scoreboard players operation b calculate /= num calculate
execute if score a calculate matches 0 run title @s subtitle [{"text":"§d你将在"},{"score":{"name":"b","objective":"calculate"}},{"text":"§d秒后开始重新部署"}]
scoreboard players reset a calculate
scoreboard players reset b calculate
scoreboard players reset num calculate


execute if score @s respawn_countdown matches 0 run function sh2:process_control/battle/respawn/shadow/done
scoreboard players remove @s[scores={respawn_countdown=1..}] respawn_countdown 1 