function sh2:char/hezi/main_weapon/run
function sh2:char/hezi/skill_1/run
function sh2:char/hezi/skill_2/run
scoreboard players remove @s[scores={hezi.cd0=1..}] hezi.cd0 1
scoreboard players remove @s[scores={hezi.cd1=1..}] hezi.cd1 1
scoreboard players remove @s[scores={hezi.cd2=1..}] hezi.cd2 1

execute as @s[scores={hezi.process.cd2=0..}] run function sh2:char/hezi/skill_2/action
#当选择的栏位是 hotbar.0 到 3时，显示一个actionbar的ui
execute if entity @s[nbt={"SelectedItemSlot":0}] run function sh2:char/hezi/actionbar_ui
execute if entity @s[nbt={"SelectedItemSlot":1}] run function sh2:char/hezi/actionbar_ui
execute if entity @s[nbt={"SelectedItemSlot":2}] run function sh2:char/hezi/actionbar_ui
execute if entity @s[nbt={"SelectedItemSlot":3}] run function sh2:char/hezi/actionbar_ui