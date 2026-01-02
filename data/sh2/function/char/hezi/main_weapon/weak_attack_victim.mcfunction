damage @s 8 sh2:normal_knockback by @a[tag=hezi,limit=1]
say @s 受到了 @a[tag=hezi] 的伤害
scoreboard players set @a[tag=hezi] hezi.cd0 21
execute as @a[tag=hezi] at @s run playsound minecraft:entity.item.break master @a ~ ~ ~