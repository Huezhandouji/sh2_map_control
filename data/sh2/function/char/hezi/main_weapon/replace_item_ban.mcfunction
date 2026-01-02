clear @s barrier[custom_data={"slotholder0":true}]
kill @e[distance=..10,type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slotholder0":true}}}}]
item replace entity @s hotbar.1 with barrier[custom_data={"slotholder0":true},item_name=[{"text":"§c决爵-普通攻击 << 被禁用"}]]