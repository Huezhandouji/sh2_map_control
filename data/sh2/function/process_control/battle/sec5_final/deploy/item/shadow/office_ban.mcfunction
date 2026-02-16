clear @s oak_door[custom_data={"use_event":{"shadow_deploy_region_sec5_5":true}}]
clear @s barrier[custom_data={"slotholder6":true}]
kill @e[type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slotholder6":true}}}}]
item replace entity @s hotbar.6 with barrier[custom_data={"slotholder6":true},item_name=[{"text":"§c无法部署->最后部署点主庭被摧毁[酒店]"}]]