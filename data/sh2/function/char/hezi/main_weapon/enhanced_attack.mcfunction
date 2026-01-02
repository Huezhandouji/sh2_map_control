execute positioned ~ ~1 ~ run function sh2:char/hezi/main_weapon/particle1
playsound item.trident.throw master @a ~ ~ ~ 1 0.8
execute as @a[distance=..5,tag=!hezi] run damage @s 10 sh2:normal_knockback by @a[tag=hezi,limit=1]
scoreboard players set @s hezi.cd0 21
scoreboard players remove @s ENERGY 8