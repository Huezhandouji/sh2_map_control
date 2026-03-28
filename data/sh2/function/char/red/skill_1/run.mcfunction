execute if score timer red.cd1 matches 0 if score @s red.skill1_count matches 1.. run function sh2:char/red/skill_1/attack_once
scoreboard players add timer red.cd1 1
execute if score timer red.cd1 matches 6.. run scoreboard players set timer red.cd1 0

execute if entity @s[scores={red.cd1=0,faint_time=-1,silence_time=-1}] run return run function sh2:char/red/skill_1/item/available
function sh2:char/red/skill_1/item/ban
function sh2:char/red/skill_1/item/change_ban_item_name