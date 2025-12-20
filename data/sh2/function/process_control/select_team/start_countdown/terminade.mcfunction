scoreboard players set game_start_countdown system -1
scoreboard players set game_start_countdown_started system 0
title @a title [{"text":"§4对局开启倒计时终止"}]
tellraw @a [{"text":"§e>>由于有玩家取消准备或者阵营人数不足,对局开启的倒计时被终止"}]
execute as @a at @s run playsound block.anvil.land master @s ~ ~ ~