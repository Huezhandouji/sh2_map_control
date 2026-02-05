#这就是一次位移了
execute unless block ^ ^ ^1 #sh2:passable unless block ^ ^ ^2 #sh2:passable run return run scoreboard players set @s hezi.process.cd2 0
tp @s ^ ^ ^2
execute as @a[tag=!hezi,distance=..2,tag=!hezi_skill2_hited] run damage @s 8 sh2:normal_knockback by @a[tag=hezi,limit=1]
#这个是标记打过的敌人的，防止因为判定范围的问题导致一个人被多次伤害
tag @a[tag=!hezi,distance=..2] add hezi_skill2_hited
particle dust{"color":16711680,"scale":2} ~ ~ ~ 1 1 1 1 10
particle explosion
playsound item.trident.riptide_1 master @a ~ ~ ~