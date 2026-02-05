#二技能 思路和普攻差不多
#依旧是不同的状态给不同的物品 一技能是二技能的思路的简化版本
execute as @s[scores={hezi.process.cd3=0}] run function sh2:char/hezi/skill_3/action
scoreboard players remove @s[scores={hezi.process.cd3=0..}] hezi.process.cd3 1
execute if score @s hezi.process.cd3 matches 0 run function sh2:char/hezi/skill_3/action

execute if entity @s[scores={hezi.cd3=0,ENERGY=20..,faint_time=-1,silence_time=-1}] run return run function sh2:char/hezi/skill_3/item/available
function sh2:char/hezi/skill_3/item/ban
function sh2:char/hezi/skill_3/item/change_ban_item_name

