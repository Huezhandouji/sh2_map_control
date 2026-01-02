execute if score @s hezi.cd0 matches 0 if score @s faint_time matches -1 unless items entity @s hotbar.0 diamond_hoe[enchantments={"sh2:left_click/hezi/skill0":1}] run function sh2:char/hezi/main_weapon/replace_item_available
execute if score @s hezi.cd0 matches 1.. unless items entity @s hotbar.0 barrier[custom_data={"slotholder0":true}] run function sh2:char/hezi/main_weapon/replace_item_cd
execute unless score @s faint_time matches -1 run function sh2:char/hezi/main_weapon/replace_item_ban
item modify entity @s[scores={ENERGY=30..}] hotbar.0 {"function":"set_components","components":{"enchantment_glint_override":true}}
item modify entity @s[scores={ENERGY=..29}] hotbar.0 {"function":"set_components","components":{"enchantment_glint_override":false}}