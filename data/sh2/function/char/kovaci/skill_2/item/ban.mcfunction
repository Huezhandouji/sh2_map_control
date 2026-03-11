#眩晕，给屏障
execute if items entity @s hotbar.2 barrier[custom_data={"slotholder2":true}] run return fail

clear @s barrier[custom_data={"slotholder2":true}]
kill @e[distance=..10,type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slotholder2":true}}}}]
item replace entity @s hotbar.2 with barrier[custom_data={"slotholder2":true},item_name=[{"text":""}],attribute_modifiers=[{"id":"ban_attack","amount":-100,"operation":"add_value","type":"attack_damage","slot":"hand"}]]
