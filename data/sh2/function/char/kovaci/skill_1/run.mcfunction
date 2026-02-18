scoreboard players remove @s[scores={kovaci.cd1=1..}] kovaci.cd1 1
#炮弹爆炸
execute as @e[tag=kovaci_grenade,type=item] at @s run function sh2:char/kovaci/skill_1/grenade/detect_hit
 
#物品
execute if entity @s[scores={kovaci.cd1=0,faint_time=-1,silence_time=-1,ENERGY=15..}] run return run function sh2:char/kovaci/skill_1/item/available
function sh2:char/kovaci/skill_1/item/ban
function sh2:char/kovaci/skill_1/item/change_ban_item_name