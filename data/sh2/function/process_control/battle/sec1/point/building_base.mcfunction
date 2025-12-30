scoreboard players operation a calculate = @s build_countdown
scoreboard players set num calculate 20
scoreboard players operation a calculate %= num calculate
execute if score a calculate matches 0 run scoreboard players operation b calculate = @s build_countdown
execute if score a calculate matches 0 run scoreboard players operation b calculate /= num calculate
execute if score a calculate matches 0 run tellraw @s [{"text":"§a你正在建造前线基地..还有"},{"score":{"objective":"calculate","name":"b"}}]
scoreboard players reset a calculate
scoreboard players reset b calculate
scoreboard players reset num calculate

execute if score @s build_countdown matches 0 run function sh2:process_control/battle/sec1/point/base_establish
execute if score @s build_countdown matches 0 run scoreboard players set @s build_countdown -1

execute unless entity @s[nbt={"SelectedItemSlot":8}] run scoreboard players set @s build_countdown -1
execute unless entity @s[nbt={"SelectedItemSlot":8}] run tellraw @s [{"text":"§c建造中断!在建造时必须手持指南针"}]
execute positioned -243.5 6 73.5 unless entity @s[distance=..10] run scoreboard players set @s build_countdown -1
execute positioned -243.5 6 73.5 unless entity @s[distance=..10] run tellraw @s [{"text":"§c建造中断!在建造时必须处于据点内"}]

scoreboard players remove @s build_countdown 1