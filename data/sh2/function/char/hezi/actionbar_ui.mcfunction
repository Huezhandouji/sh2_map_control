scoreboard players set num calculate 20
scoreboard players operation a calculate = @s hezi.cd0
scoreboard players operation b calculate = @s hezi.cd1
scoreboard players operation a calculate /= num calculate
scoreboard players operation b calculate /= num calculate
title @s actionbar [{"selector":"@s","color":"green"},{"text":"§e[梅妻鹤子] §7// §a能量 "},{"score":{"name":"@s","objective":"ENERGY"},"color":"white"},{"text":"§a/"},{"score":{"name":"@s","objective":"ENERGY_MAX"},"color":"white"},{"text":" §dsan "},{"score":{"name":"@s","objective":"SAN"},"color":"white"},{"text":"§d/"},{"score":{"name":"@s","objective":"SAN_MAX"},"color":"white"},{"text":" §7// §6CD §6普攻"},{"score":{"name":"a","objective":"calculate"},"color":"white"},{"text":"§fs §6Rush!"},{"score":{"name":"b","objective":"calculate"},"color":"white"},{"text":"§fs"}]
scoreboard players reset a calculate
scoreboard players reset b calculate
scoreboard players reset num calculate