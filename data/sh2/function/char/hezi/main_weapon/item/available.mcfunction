function sh2:char/hezi/main_weapon/item/change_available_name
execute if items entity @s hotbar.0 diamond[enchantments={"sh2:left_click/hezi/skill0":1}] run return fail
clear @s diamond[enchantments={"sh2:left_click/hezi/skill0":1}]
kill @e[distance=..5,type=item,nbt={"Item":{"id":"minecraft:diamond","components":{"minecraft:enchantments":{"sh2:left_click/hezi/skill0":1}}}}]
item replace entity @s hotbar.0 with diamond[item_model="diamond_hoe",enchantment_glint_override=false,enchantments={"sh2:left_click/hezi/skill0":1},piercing_weapon={"deals_knockback":true,"dismounts":true},custom_name=""]