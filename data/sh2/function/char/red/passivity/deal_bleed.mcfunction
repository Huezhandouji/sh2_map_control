#如进化够了5就把下面的逻辑截掉，直接运行一秒流3层的
execute if score @s EVO matches 5.. run return run function sh2:char/red/passivity/evo_deal_bleed

scoreboard players set @s[scores={red.bleed=16..}] red.bleed 15
scoreboard players remove @s red.bleed 1
damage @s 2 sh2:true by @a[tag=red,limit=1]
effect give @a[tag=red] resistance 5 0 true
scoreboard players add @a[tag=red] SAN 4
particle block{"block_state":"redstone_block"} ~ ~1 ~ 0.5 0.5 0.5 1 10 normal