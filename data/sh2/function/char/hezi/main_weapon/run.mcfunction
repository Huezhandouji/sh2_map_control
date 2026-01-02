#当什么问题也没有，把格子替换上技能物品
execute if score @s hezi.cd0 matches 0 if score @s faint_time matches -1 unless items entity @s hotbar.0 diamond_hoe[enchantments={"sh2:left_click/hezi/skill0":1}] run function sh2:char/hezi/main_weapon/replace_item_available
#在cd中，替换成屏障，阻止玩家释放技能
execute if score @s hezi.cd0 matches 1.. unless items entity @s hotbar.0 barrier[custom_data={"slotholder0":true}] run function sh2:char/hezi/main_weapon/replace_item_cd
#在眩晕，替换成屏障，阻止玩家释放技能
#要注意，在不同技能的占位物品的custom_data组件里写的slotholder后面要加不同的数字，如slotholder1，防止非常乱的循环清除物品再重复给
execute unless score @s faint_time matches -1 run function sh2:char/hezi/main_weapon/replace_item_ban
#由于梅妻鹤子普攻当能量大于30时会被强化，给这个物品一个附魔发光效果来让人知道
item modify entity @s[scores={ENERGY=30..}] hotbar.0 {"function":"set_components","components":{"enchantment_glint_override":true}}
item modify entity @s[scores={ENERGY=..29}] hotbar.0 {"function":"set_components","components":{"enchantment_glint_override":false}}