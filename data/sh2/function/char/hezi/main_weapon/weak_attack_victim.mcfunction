#这个好说了，这是打到的敌人执行的函数，伤害自己，播放命中音效，然后给梅妻鹤子普攻设置冷却
damage @s 8 sh2:normal_knockback by @a[tag=hezi,limit=1]
scoreboard players set @a[tag=hezi] hezi.cd0 21
execute as @a[tag=hezi] at @s run playsound minecraft:entity.item.break master @a ~ ~ ~
scoreboard players add @a[tag=hezi] ENERGY 3