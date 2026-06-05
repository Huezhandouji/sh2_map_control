scoreboard players remove @s[scores={kovaci.cd3=1..}] kovaci.cd3 1
execute if entity @s[scores={kovaci.cd3=0,faint_time=-1,silence_time=-1}] run return run function sh2:char/kovaci/skill_3/item/available
function sh2:char/kovaci/skill_3/item/ban
function sh2:char/kovaci/skill_3/item/change_ban_item_name