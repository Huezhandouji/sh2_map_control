#这个函数当有玩梅妻鹤子的开始循环运行
#所有普攻和技能的运行函数
#这个数据包运行的结构可以想象成一棵树，从树根的最开始的不断运行的tick函数开始一直到这里
function sh2:char/hezi/main_weapon/run
function sh2:char/hezi/skill_1/run
function sh2:char/hezi/skill_2/run
function sh2:char/hezi/skill_3/run
#减少cd计分
scoreboard players remove @s[scores={hezi.cd0=1..}] hezi.cd0 1
scoreboard players remove @s[scores={hezi.cd1=1..}] hezi.cd1 1
scoreboard players remove @s[scores={hezi.cd2=1..}] hezi.cd2 1
scoreboard players remove @s[scores={hezi.cd3=1..}] hezi.cd3 1
#由于二技能不能在一刻内执行完，所以使用一个不断递减的积分板，当判断到特定分数时执行每一段

#当选择的栏位是 hotbar.0 到 3时，显示一个actionbar的ui
execute if entity @s[nbt={"SelectedItemSlot":0}] run function sh2:char/hezi/actionbar_ui
execute if entity @s[nbt={"SelectedItemSlot":1}] run function sh2:char/hezi/actionbar_ui
execute if entity @s[nbt={"SelectedItemSlot":2}] run function sh2:char/hezi/actionbar_ui
execute if entity @s[nbt={"SelectedItemSlot":3}] run function sh2:char/hezi/actionbar_ui

#被动
execute if score @s SAN matches ..100 run effect give @s strength 1 0 true
execute if score @s SAN matches ..75 run effect give @s resistance 1 0 true
execute if score @s SAN matches ..50 run effect give @s fire_resistance 1 0 true
execute if score @s SAN matches ..40 if score 1s clock matches 0 run function sh2:char/hezi/run_line_25
execute if score @s SAN matches ..30 run function sh2:char/hezi/run_line_26
execute if score @s SAN matches -998..20 unless score @s immune_control_time matches 0.. run scoreboard players set @s immune_control_time 1
execute if score @s SAN matches -998..10 if score @s hezi.process.passivity matches -1 run scoreboard players set @s hezi.process.passivity 300
execute if score @s hezi.process.passivity matches 0.. run function sh2:char/hezi/passivity/mad
scoreboard players remove @s[scores={hezi.process.passivity=0..}] hezi.process.passivity 1