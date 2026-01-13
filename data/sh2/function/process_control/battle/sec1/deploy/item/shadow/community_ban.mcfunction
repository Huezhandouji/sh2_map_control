clear @s stone_bricks[custom_data={"use_event":{"shadow_deploy_region_sec1_2":true}}]
clear @s barrier[custom_data={"slothoder":true}]
kill @e[type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slothoder":true}}}}]
item replace entity @s hotbar.2 with barrier[custom_data={"slothoder":true},item_name=[{"text":"§c无法部署§e->前线影庭[小型社区]§c失去控制"}]]