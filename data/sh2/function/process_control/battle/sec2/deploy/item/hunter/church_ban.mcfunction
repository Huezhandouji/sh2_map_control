clear @s chiseled_polished_blackstone[custom_data={"use_event":{"hunter_deploy_region_sec2_3":true}}]
clear @s barrier[custom_data={"slotholder4":true}]
kill @e[type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slotholder4":true}}}}]
item replace entity @s hotbar.4 with barrier[custom_data={"slotholder4":true},item_name=[{"text":"§c无法部署§e->前线地基[暗影教堂]附近§c尚未建立"}]]