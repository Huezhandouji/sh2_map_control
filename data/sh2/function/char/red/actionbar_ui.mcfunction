scoreboard players set num calculate 20
scoreboard players operation a calculate = @s red.cd1
scoreboard players operation a calculate /= num calculate

scoreboard players operation b calculate = @s red.cd2
scoreboard players operation b calculate /= num calculate

scoreboard players operation c calculate = @s red.cd3
scoreboard players operation c calculate /= num calculate


title @s actionbar [{"selector":"@s","color":"green"},\
{"text":"§e[红] §7# "},\
{"text":" §dTE "},{"score":{"name":"@s","objective":"SAN"},"color":"white"},{"text":"§d/"},\
{"score":{"name":"@s","objective":"SAN_MAX"},"color":"white"},{"text":" §d进化 "},{"score":{"name":"@s","objective":"EVO"},"color":"white"},{"text":" §7# §6CD §6孤妄自赏"},\
{"score":{"name":"a","objective":"calculate"},"color":"white"},{"text":"§fs §6煞气震赫"},{"score":{"name":"b","objective":"calculate"},"color":"white"},\
{"text":"§fs§7 # §6黯然销魂"},{"score":{"name":"c","objective":"calculate"},"color":"white"},{"text":"§fs"}]

scoreboard players reset num calculate
scoreboard players reset a calculate
scoreboard players reset x calculate
scoreboard players reset b calculate