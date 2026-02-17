
#如果换成别的物品就取消瞄准
execute unless items entity @s weapon.mainhand diamond[custom_data={"use_event":{"kovaci_gun":true}}] if score @s kovaci.is_aimming matches 1 run function sh2:char/kovaci/main_weapon/aimming/disable
#换弹
execute as @e[type=item,nbt={"Item":{"id":"minecraft:diamond","components":{"minecraft:custom_data":{"use_event":{"kovaci_gun":true}}}}}] \
on origin if entity @s[tag=kovaci,scores={kovaci.ammo=..19}] at @s run function sh2:char/kovaci/main_weapon/reload/start_reload
kill @e[type=item,distance=..10,nbt={"Item":{"id":"minecraft:diamond","components":{"minecraft:custom_data":{"use_event":{"kovaci_gun":true}}}}}]
execute if score @s kovaci.reload_cd matches 0.. run function sh2:char/kovaci/main_weapon/reload/running
#子弹
execute as @e[type=block_display,tag=kovaci_bullet] at @s run function sh2:char/kovaci/main_weapon/bullet/movement
#减少设计间隔计数
scoreboard players remove @s[scores={kovaci.shoot_interval=1..}] kovaci.shoot_interval 1
#替换物品
execute if entity @s[scores={kovaci.reload_cd=-1,faint_time=-1}] unless entity @s[scores={kovaci.ammo=0,ENERGY=..19}] run return run function sh2:char/kovaci/main_weapon/item/available
function sh2:char/kovaci/main_weapon/item/ban
function sh2:char/kovaci/main_weapon/item/change_ban_item_name