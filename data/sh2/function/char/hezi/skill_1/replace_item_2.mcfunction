clear @s barrier[custom_data={"slothoder":true}]
kill @e[distance=..10,type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slothoder":true}}}}]
item replace entity @s hotbar.1 with barrier[custom_data={"slothoder":true},item_name=[{"text":"§cRush! << CD中"}]]