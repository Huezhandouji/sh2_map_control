function sh2:char/hezi/main_weapon/main_weapon
function sh2:char/hezi/skill_1/run
scoreboard players remove @s[scores={hezi.cd0=1..}] hezi.cd0 1
scoreboard players remove @s[scores={hezi.cd1=1..}] hezi.cd1 1

#当选择的栏位是 hotbar.0 到 3时，显示一个actionbar的ui
execute if entity @s[nbt={"SelectedItemSlot":0}] run function sh2:char/hezi/actionbar_ui
execute if entity @s[nbt={"SelectedItemSlot":1}] run function sh2:char/hezi/actionbar_ui
execute if entity @s[nbt={"SelectedItemSlot":2}] run function sh2:char/hezi/actionbar_ui
execute if entity @s[nbt={"SelectedItemSlot":3}] run function sh2:char/hezi/actionbar_ui