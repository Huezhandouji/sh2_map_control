scoreboard players set num calculate 20
scoreboard players operation a calculate = @s hezi.cd0
scoreboard players operation b calculate = @s hezi.cd1
scoreboard players operation a calculate /= num calculate
scoreboard players operation b calculate /= num calculate
title @s actionbar [{"selector":"@s","color":"green"},{"text":"§e[梅妻鹤子] // §6CD时间 "},{"text":"§6普攻"},{"score":{"name":"a","objective":"calculate"}},{"text":"s §6Rush!"},{"score":{"name":"b","objective":"calculate"}},{"text":"s"}]
scoreboard players reset a calculate
scoreboard players reset b calculate
scoreboard players reset num calculate