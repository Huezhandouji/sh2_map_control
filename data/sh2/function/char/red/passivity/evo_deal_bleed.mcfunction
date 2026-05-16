scoreboard players set @s[scores={red.bleed=16..}] red.bleed 15
scoreboard players remove @s red.bleed 3
damage @s 6 sh2:true by @a[tag=red,limit=1]
effect give @a[tag=red] resistance 5 0 true
scoreboard players add @a[tag=red] SAN 12
particle block{"block_state":"redstone_block"} ~ ~1 ~ 0.5 0.5 0.5 1 10 normal