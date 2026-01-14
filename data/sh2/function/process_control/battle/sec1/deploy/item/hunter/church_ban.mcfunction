clear @s chiseled_polished_blackstone[custom_data={"use_event":{"hunter_deploy_region_sec1_3":true}}]
clear @s barrier[custom_data={"slotholder4":true}]
kill @e[type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slotholder4":true}}}}]
item replace entity @s hotbar.4 with barrier[custom_data={"slotholder4":true},item_name=[{"text":"§c未开始攻占的敌方控制区域-暗影教堂"}]]