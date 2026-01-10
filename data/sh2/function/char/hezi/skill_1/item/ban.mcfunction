#眩晕，给屏障
execute if items entity @s hotbar.1 barrier[custom_data={"slotholder1":true}] run return fail

clear @s barrier[custom_data={"slotholder1":true}]
kill @e[distance=..10,type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slotholder1":true}}}}]
item replace entity @s hotbar.1 with barrier[custom_data={"slotholder1":true},item_name=[{"text":""}]]
