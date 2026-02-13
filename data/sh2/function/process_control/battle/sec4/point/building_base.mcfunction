#一名猎影人建立基地时循环执行
#在聊天栏显示剩余时间
scoreboard players operation a calculate = @s build_countdown
scoreboard players set num calculate 20
scoreboard players operation a calculate %= num calculate
execute if score a calculate matches 0 run scoreboard players operation b calculate = @s build_countdown
execute if score a calculate matches 0 run scoreboard players operation b calculate /= num calculate
execute if score a calculate matches 0 run tellraw @s [{"text":"§a你正在建造前线基地..还有"},{"score":{"objective":"calculate","name":"b"}}]
scoreboard players reset a calculate
scoreboard players reset b calculate
scoreboard players reset num calculate
#如果倒计时结束，执行成功建造地基函数
execute if score @s build_countdown matches 0 run function sh2:process_control/battle/sec4/point/base_establish
execute if score @s build_countdown matches 0 run scoreboard players set @s build_countdown -1
#如果走出区域或者中间没有手持指南针，建造中断
execute unless entity @s[nbt={"SelectedItemSlot":8}] run scoreboard players set @s build_countdown -1
execute unless entity @s[nbt={"SelectedItemSlot":8}] run tellraw @s [{"text":"§c建造中断!在建造时必须手持指南针"}]
execute positioned -458 7 -127 unless entity @s[distance=..10] run scoreboard players set @s build_countdown -1
execute positioned -458 7 -127 unless entity @s[distance=..10] run tellraw @s [{"text":"§c建造中断!在建造时必须处于据点内"}]

scoreboard players remove @s build_countdown 1