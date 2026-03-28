damage @s 8 sh2:normal by @a[tag=kovaci,limit=1]
execute as @e[type=block_display,tag=kovaci_bullet,sort=nearest] at @s run function sh2:char/kovaci/main_weapon/bullet/destory
execute as @a[tag=kovaci] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~