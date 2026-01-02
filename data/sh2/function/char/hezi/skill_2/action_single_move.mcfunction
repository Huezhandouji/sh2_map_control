tp @s ^ ^ ^2
execute as @a[tag=!hezi,distance=..2,tag=!hezi_skill2_hited] run damage @s 8 sh2:normal_knockback by @a[tag=hezi,limit=1]
tag @a[tag=!hezi,distance=..2] add hezi_skill2_hited
particle dust{"color":16711680,"scale":2} ~ ~ ~ 1 1 1 1 10
particle explosion
playsound item.trident.riptide_1 master @a ~ ~ ~