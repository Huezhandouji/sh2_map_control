clear @s scaffolding[custom_data={"use_event":{"hunter_deploy_region_sec1_4":true}}]
clear @s barrier[custom_data={"slotholder5":true}]
kill @e[type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slotholder5":true}}}}]
item replace entity @s hotbar.5 with barrier[custom_data={"slotholder5":true},item_name=[{"text":"§c未开始攻占的敌方控制区域-建筑工地"}]]