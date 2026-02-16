execute if entity @s[nbt={"SelectedItemSlot":0}] run function sh2:char/kovaci/main_weapon/item/set_name_to_storage
execute if items entity @s hotbar.0 diamond[custom_data={"use_event":{"kovaci_gun":true}}] run return fail
clear @s diamond[custom_data={"use_event":{"kovaci_gun":true}}]
item replace entity @s hotbar.0 with diamond[item_model="fishing_rod",custom_data={"use_event":{"kovaci_gun":true}},\
piercing_weapon={"deals_knockback":true,"dismounts":true},enchantments={"sh2:left_click/kovaci/skill0":1},\
consumable={"animation":"crossbow","consume_seconds":114514,"has_consume_particles":false}]