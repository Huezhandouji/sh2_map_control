scoreboard players set num calculate 20
scoreboard players operation a calculate = @s kovaci.cd1


scoreboard players operation a calculate /= num calculate
scoreboard players set x calculate 2400
scoreboard players operation b calculate = @s kovaci.mine_store_cd
scoreboard players operation x calculate -= b calculate
scoreboard players operation x calculate /= num calculate



title @s actionbar [{"selector":"@s","color":"green"},\
{"text":"§e[科瓦西] §7# §a能量 "},{"score":{"name":"@s","objective":"ENERGY"},"color":"white"},\
{"text":" §dsan "},{"score":{"name":"@s","objective":"SAN"},"color":"white"},{"text":"§d/"},\
{"score":{"name":"@s","objective":"SAN_MAX"},"color":"white"},{"text":" §7# §6CD §6能量炸炮"},\
{"score":{"name":"a","objective":"calculate"},"color":"white"},{"text":"§fs §6下一个地雷"},{"score":{"name":"x","objective":"calculate"},"color":"white"},\
{"text":"§fs"}]

scoreboard players reset num calculate
scoreboard players reset a calculate
scoreboard players reset x calculate
scoreboard players reset b calculate