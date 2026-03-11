execute unless block ^ ^ ^-0.5 #sh2:passable run return run function sh2:char/kovaci/main_weapon/bullet/destory
execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[team=shadow,dx=0,dy=0,dz=0] at @s run return run function sh2:char/kovaci/main_weapon/bullet/hit_player
tp @s ^ ^ ^-0.5
particle ash
particle ash ^ ^ ^0.25
scoreboard players add @s loopcnt 1
execute if score @s loopcnt matches 40.. run return run scoreboard players set @s loopcnt 0
execute at @s run function sh2:char/kovaci/main_weapon/bullet/single_movement
