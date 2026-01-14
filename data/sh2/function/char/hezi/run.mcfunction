#这个函数当有玩梅妻鹤子的开始循环运行
#所有普攻和技能的运行函数
#这个数据包运行的结构可以想象成一棵树，从树根的最开始的不断运行的tick函数开始一直到这里
function sh2:char/hezi/main_weapon/run
function sh2:char/hezi/skill_1/run
function sh2:char/hezi/skill_2/run
#减少cd计分
scoreboard players remove @s[scores={hezi.cd0=1..}] hezi.cd0 1
scoreboard players remove @s[scores={hezi.cd1=1..}] hezi.cd1 1
scoreboard players remove @s[scores={hezi.cd2=1..}] hezi.cd2 1
#由于二技能不能在一刻内执行完，所以使用一个不断递减的积分板，当判断到特定分数时执行每一段
execute as @s[scores={hezi.process.cd2=0..}] run function sh2:char/hezi/skill_2/action
#当选择的栏位是 hotbar.0 到 3时，显示一个actionbar的ui
execute if entity @s[nbt={"SelectedItemSlot":0}] run function sh2:char/hezi/actionbar_ui
execute if entity @s[nbt={"SelectedItemSlot":1}] run function sh2:char/hezi/actionbar_ui
execute if entity @s[nbt={"SelectedItemSlot":2}] run function sh2:char/hezi/actionbar_ui
execute if entity @s[nbt={"SelectedItemSlot":3}] run function sh2:char/hezi/actionbar_ui