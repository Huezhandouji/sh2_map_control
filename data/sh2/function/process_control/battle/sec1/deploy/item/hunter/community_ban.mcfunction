clear @s stone_bricks[custom_data={"use_event":{"hunter_deploy_region_sec1_2":true}}]
clear @s barrier[custom_data={"slotholder3":true}]
kill @e[type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slotholder3":true}}}}]
item replace entity @s hotbar.3 with barrier[custom_data={"slotholder3":true},item_name=[{"text":"§c无法部署§e->前线地基[小型社区]附近§c尚未建立"}]]