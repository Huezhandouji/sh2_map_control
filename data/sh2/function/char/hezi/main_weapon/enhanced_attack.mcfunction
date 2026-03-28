#这是强化普攻的具体效果，因为是范围伤害，简单粗暴，直接一个函数写完。
execute positioned ~ ~1 ~ run function sh2:char/hezi/main_weapon/particle1
playsound item.trident.throw master @a ~ ~ ~ 1 0.8
execute as @a[distance=..5,tag=!hezi] run damage @s 10 sh2:normal_knockback by @a[tag=hezi,limit=1]
execute if entity @a[distance=..5,tag=!hezi] run effect give @s instant_health 1 0 true
#减少能量
scoreboard players remove @s ENERGY 5
