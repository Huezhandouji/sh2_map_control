clear @s scaffolding[custom_data={"use_event":{"shadow_deploy_region_sec4_4":true}}]
clear @s barrier[custom_data={"slotholder4":true}]
kill @e[type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slotholder4":true}}}}]
item replace entity @s hotbar.4 with barrier[custom_data={"slotholder4":true},item_name=[{"text":"§c失去的区域-[建筑工地]敌方控制"}]]