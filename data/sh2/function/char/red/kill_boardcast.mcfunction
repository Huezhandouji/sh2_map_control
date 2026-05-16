execute store result score a calculate run random value 0..1
execute if score a calculate matches 0 run tellraw @a [{"text":"§e§l击杀! §r"},{"selector":"@a[tag=victim]","color":"red"},{"text":"§7 被 "},{"selector":"@s","color":"gold"},{"text":"§7 使用圣洁之刃捅穿了胸膛"}]
execute if score a calculate matches 1 run tellraw @a [{"text":"§e§l击杀! §r"},{"selector":"@s","color":"gold"},{"text":"§7 为 "},{"selector":"@a[tag=victim]","color":"red"},{"text":"§7 献上了一朵白花"}]
scoreboard players reset a calculate