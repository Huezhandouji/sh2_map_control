#在actionbar位置显示的状态栏
#先把技能的cd从tick转成剩的秒数
scoreboard players set num calculate 20
scoreboard players operation a calculate = @s hezi.cd0
scoreboard players operation b calculate = @s hezi.cd1
scoreboard players operation c calculate = @s hezi.cd2
scoreboard players operation d calculate = @s hezi.cd3
scoreboard players operation a calculate /= num calculate
scoreboard players operation b calculate /= num calculate
scoreboard players operation c calculate /= num calculate
scoreboard players operation d calculate /= num calculate
#t显
title @s actionbar [{"selector":"@s","color":"green"},{"text":"§e[梅妻鹤子] §7# §a能量 "},{"score":{"name":"@s","objective":"ENERGY"},"color":"white"},{"text":"§a/"},{"score":{"name":"@s","objective":"ENERGY_MAX"},"color":"white"},{"text":" §dsan "},{"score":{"name":"@s","objective":"SAN"},"color":"white"},{"text":"§d/"},{"score":{"name":"@s","objective":"SAN_MAX"},"color":"white"},{"text":" §7# §6CD §6普攻"},{"score":{"name":"a","objective":"calculate"},"color":"white"},{"text":"§fs §6漫不经心"},{"score":{"name":"b","objective":"calculate"},"color":"white"},{"text":"§fs §6血腥连斩"},{"score":{"name":"c","objective":"calculate"},"color":"white"},{"text":"§fs §6圆弧斩"},{"score":{"name":"d","objective":"calculate"},"color":"white"},{"text":"s","color":"white"}]
#清除在calculate计分板上使用的目标，因为这个计分板是公用的
scoreboard players reset a calculate
scoreboard players reset b calculate
scoreboard players reset c calculate
scoreboard players reset num calculate