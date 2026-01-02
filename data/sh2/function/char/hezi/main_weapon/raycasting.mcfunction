execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0,dy=0,dz=0,tag=!hezi] at @s run function sh2:char/hezi/main_weapon/weak_attack_victim
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0,dy=0,dz=0,tag=!hezi] run return 1
execute positioned ^ ^ ^0.1 if entity @s[distance=..10] run function sh2:char/hezi/main_weapon/raycasting
