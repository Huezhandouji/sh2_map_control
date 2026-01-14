item modify entity @s[scores={ENERGY=30..}] hotbar.0 {"function":"set_components","components":{"enchantment_glint_override":true}}
item modify entity @s[scores={ENERGY=..29}] hotbar.0 {"function":"set_components","components":{"enchantment_glint_override":false}}
execute if entity @s[scores={hezi.cd0=0,faint_time=-1}] run return run function sh2:char/hezi/main_weapon/item/available
function sh2:char/hezi/main_weapon/item/ban
function sh2:char/hezi/main_weapon/item/change_ban_item_name