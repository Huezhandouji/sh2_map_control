clear @s barrier[custom_data={"slotholder1":true}]
kill @e[distance=..10,type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slotholder1":true}}}}]
item replace entity @s hotbar.1 with barrier[custom_data={"slotholder1":true},item_name=[{"text":"§cRush! << 被禁用"}]]