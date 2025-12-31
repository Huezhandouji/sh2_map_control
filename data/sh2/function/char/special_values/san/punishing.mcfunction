scoreboard players set @s[scores={san_punish_countdown=100},team=hunter] SAN -9999
#特效
title @s[scores={san_punish_countdown=100},team=hunter] times 0 100 0
title @s[scores={san_punish_countdown=100},team=hunter] title [{"text":"§d⊠恐惧正在注视着你⊠"}]
title @s[scores={san_punish_countdown=100},team=hunter] subtitle [{"text":"§7再一次 忏悔吧"}]

title @s[scores={san_punish_countdown=100},team=shadow] times 0 100 0
title @s[scores={san_punish_countdown=100},team=shadow] title [{"text":"§e⊠痛苦摸上脊背⊠"}]

tellraw @s[scores={san_punish_countdown=100}] [{"text":"§e>>§c你的san值损失到0了! 因此你被添加了5秒的§e[眩晕]§c效果"}]
execute as @s[scores={san_punish_countdown=100}] at @s run playsound item.totem.use master @a ~ ~ ~
execute as @s[scores={san_punish_countdown=70}] at @s run playsound entity.wither.hurt master @s ~ ~ ~ 1 0.1
execute as @s[scores={san_punish_countdown=40}] at @s run playsound entity.wither.hurt master @s ~ ~ ~ 1 0.1
execute as @s[scores={san_punish_countdown=10}] at @s run playsound entity.wither.hurt master @s ~ ~ ~ 1 0.1

#加眩晕时长
execute as @s[scores={san_punish_countdown=100}] at @s run particle sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.1 20 normal
execute as @s[scores={san_punish_countdown=100}] at @s run particle totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 20 normal
scoreboard players add @s[scores={san_punish_countdown=100}] faint_time 100

#扣除20%生命值
execute as @s[scores={san_punish_countdown=100}] store result storage sh2:deal_damage amount int 0.2 run attribute @s max_health base get
execute as @s[scores={san_punish_countdown=100}] run function sh2:char/special_values/san/deal_damage with storage sh2:deal_damage

execute as @s[scores={san_punish_countdown=0}] run scoreboard players operation @s SAN = @s SAN_MAX
scoreboard players remove @s san_punish_countdown 1