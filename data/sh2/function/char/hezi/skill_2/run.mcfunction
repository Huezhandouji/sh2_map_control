#二技能 思路和普攻差不多
#依旧是不同的状态给不同的物品 一技能是二技能的思路的简化版本
execute if entity @s[scores={hezi.cd2=0,ENERGY=15..,faint_time=-1,silence_time=-1}] run return run function sh2:char/hezi/skill_2/item/available
function sh2:char/hezi/skill_2/item/ban
function sh2:char/hezi/skill_2/item/change_ban_item_name
