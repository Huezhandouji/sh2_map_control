clear @s scaffolding[custom_data={"use_event":{"hunter_deploy_region_sec3_4":true}}]
clear @s barrier[custom_data={"slotholder5":true}]
kill @e[type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slotholder5":true}}}}]
item replace entity @s hotbar.5 with barrier[custom_data={"slotholder5":true},item_name=[{"text":"§c无法部署§e->前线地基[建筑工地]附近§c尚未建立"}]]