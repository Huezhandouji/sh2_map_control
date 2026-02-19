scoreboard players remove @s[scores={kovaci.cd2=1..}] kovaci.cd2 1
execute if score @s kovaci.mine_store matches ..1 run scoreboard players add @s kovaci.mine_store_cd 1
execute if score @s kovaci.mine_store_cd matches 2400 run function sh2:char/kovaci/skill_2/store
execute if score @s kovaci.mine_store matches 2.. if score @s kovaci.mine_store_cd matches 1.. run scoreboard players set @s kovaci.mine_store_cd 0
#地雷
execute as @e[tag=kovaci_mine,type=block_display] at @s run function sh2:char/kovaci/skill_2/mine/running
execute as @e[tag=kovaci_mine_penal_interaction] at @s run function sh2:char/kovaci/skill_2/mine/interaction_running
execute as @e[tag=kovaci_mine_penal] at @s run function sh2:char/kovaci/skill_2/mine/text_display_running
#物品
execute if entity @s[scores={kovaci.cd2=0,kovaci.mine_store=1..,faint_time=-1,silence_time=-1,ENERGY=8..}] run return run function sh2:char/kovaci/skill_2/item/available
function sh2:char/kovaci/skill_2/item/ban
function sh2:char/kovaci/skill_2/item/change_ban_item_name