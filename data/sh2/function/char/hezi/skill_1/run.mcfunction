execute if score @s hezi.cd1 matches 0 unless items entity @s hotbar.1 blaze_powder[custom_data={"use_event":{"skill_hezi_1":true}}] run function sh2:char/hezi/skill_1/replace_item_1
execute if score @s hezi.cd1 matches 1.. unless items entity @s hotbar.1 barrier[custom_data={"slothoder":true}] run function sh2:char/hezi/skill_1/replace_item_2
