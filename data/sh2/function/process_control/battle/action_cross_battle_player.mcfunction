team join spectator
scoreboard players set @s apply_character -1
gamemode spectator
title @s times 0 200 0
title @s title [{"text":"检测到你不属于本场对局","color":"red"}]
scoreboard players set @s in_battle 0
scoreboard players operation @s battle_id = #standard battle_id