execute if items entity @s hotbar.3 iron_sword[enchantments={"sh2:kovaci_skill3_attack":1}] run return fail
clear @s iron_sword[enchantments={"sh2:kovaci_skill3_attack":1}]
kill @e[distance=..5,type=item,nbt={"Item":{"id":"minecraft:iron_sword","components":{"minecraft:enchantments":{"sh2:kovaci_skill3_attack":1}}}}]
item replace entity @s hotbar.3 with iron_sword[item_model="iron_sword",enchantment_glint_override=false,enchantments={"sh2:kovaci_skill3_attack":1},custom_name="§a注爆军刀 << 就绪"]