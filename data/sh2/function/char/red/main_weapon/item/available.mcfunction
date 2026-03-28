execute if items entity @s hotbar.0 diamond[enchantments={"sh2:red_main_weapon_attack":1}] run return fail
clear @s diamond[enchantments={"sh2:red_main_weapon_attack":1}]
kill @e[distance=..5,type=item,nbt={"Item":{"id":"minecraft:diamond","components":{"minecraft:enchantments":{"sh2:red_main_weapon_attack":1}}}}]
item replace entity @s hotbar.0 with diamond[item_model="iron_sword",enchantment_glint_override=true,enchantments={"sh2:red_main_weapon_attack":1},custom_name="§a至洁之刃-普通攻击 << 就绪"]