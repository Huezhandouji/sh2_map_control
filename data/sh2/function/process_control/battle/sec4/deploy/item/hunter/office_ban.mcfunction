clear @s beacon[custom_data={"use_event":{"hunter_deploy_region_sec4_6":true}}]
clear @s barrier[custom_data={"slotholder7":true}]
kill @e[type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slotholder7":true}}}}]
item replace entity @s hotbar.7 with barrier[custom_data={"slotholder7":true},item_name=[{"text":"§c未开始攻占的敌方控制区域-主庭-写字楼"}]]