execute store result score a calculate run random value 0..1
execute if score a calculate matches 0 run tellraw @a [{"text":"§e§l击杀! §r"},{"selector":"@a[tag=victim]","color":"red"},{"text":"§7 发现自己在和疯子战斗 击杀者"},{"selector":"@s","color":"gold"}]
execute if score a calculate matches 1 run tellraw @a [{"text":"§e§l击杀! §r"},{"selector":"@s","color":"gold"},{"text":"§7 挥起镰刀,把 "},{"selector":"@a[tag=victim]","color":"red"},{"text":"§7 的头砍了下来"}]
scoreboard players reset a calculate