tag @s add self
execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0,dy=0,dz=0,tag=!self] at @s run return run function sh2:char/hezi/main_weapon/weak_attack_victim
tag @s remove self
particle end_rod
execute positioned ^ ^ ^0.1 run function sh2:char/hezi/main_weapon/raycasting