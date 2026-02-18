scoreboard players set num calculate 20
scoreboard players operation a calculate = @s kovaci.cd1


scoreboard players operation a calculate /= num calculate



title @s actionbar [{"selector":"@s","color":"green"},\
{"text":"§e[科瓦西] §7# §a能量 "},{"score":{"name":"@s","objective":"ENERGY"},"color":"white"},\
{"text":" §dsan "},{"score":{"name":"@s","objective":"SAN"},"color":"white"},{"text":"§d/"},\
{"score":{"name":"@s","objective":"SAN_MAX"},"color":"white"},{"text":" §7# §6CD §6能量炸炮"},\
{"score":{"name":"a","objective":"calculate"},"color":"white"},{"text":"§fs"}]

scoreboard players reset num calculate
scoreboard players reset a calculate