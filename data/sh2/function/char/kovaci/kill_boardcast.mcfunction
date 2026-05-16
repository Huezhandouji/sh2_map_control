execute store result score a calculate run random value 0..1
execute if score a calculate matches 0 run tellraw @a [{"text":"§e§l击杀! §r"},{"selector":"@a[tag=victim]","color":"red"},{"text":"§7 被 "},{"selector":"@s","color":"gold"},{"text":"§7 打穿了脑瓜"}]
execute if score a calculate matches 1 run tellraw @a [{"text":"§e§l击杀! §r"},{"selector":"@a[tag=victim]","color":"red"},{"text":"§7 意识到手里并没有真理 击杀者"},{"selector":"@s","color":"gold"}]
scoreboard players reset a calculate