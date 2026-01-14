clear @s stone_bricks[custom_data={"use_event":{"shadow_deploy_region_sec1_2":true}}]
clear @s barrier[custom_data={"slotholder2":true}]
kill @e[type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slotholder2":true}}}}]
item replace entity @s hotbar.2 with barrier[custom_data={"slotholder2":true},item_name=[{"text":"§c失去的区域-[小型社区]敌方控制"}]]