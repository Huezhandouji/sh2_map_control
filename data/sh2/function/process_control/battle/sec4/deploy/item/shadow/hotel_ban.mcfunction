clear @s oak_door[custom_data={"use_event":{"shadow_deploy_region_sec4_5":true}}]
clear @s barrier[custom_data={"slotholder5":true}]
kill @e[type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slotholder5":true}}}}]
item replace entity @s hotbar.5 with barrier[custom_data={"slotholder5":true},item_name=[{"text":"§c无法部署->敌方地基已建立[酒店]"}]]