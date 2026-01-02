clear @s barrier[custom_data={"slotholder2":true}]
kill @e[distance=..10,type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slotholder2":true}}}}]
item replace entity @s hotbar.2 with barrier[custom_data={"slotholder2":true},item_name=[{"text":"§c突进 << 能量不足"}]]