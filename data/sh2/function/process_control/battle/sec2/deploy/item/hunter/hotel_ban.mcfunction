clear @s oak_door[custom_data={"use_event":{"hunter_deploy_region_sec2_5":true}}]
clear @s barrier[custom_data={"slotholder6":true}]
kill @e[type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slotholder6":true}}}}]
item replace entity @s hotbar.6 with barrier[custom_data={"slotholder6":true},item_name=[{"text":"§c未开始攻占的敌方控制区域-酒店"}]]