clear @s chiseled_polished_blackstone[custom_data={"use_event":{"shadow_deploy_region_sec4_3":true}}]
clear @s barrier[custom_data={"slotholder3":true}]
kill @e[type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slotholder3":true}}}}]
item replace entity @s hotbar.3 with barrier[custom_data={"slotholder3":true},item_name=[{"text":"§c失去的区域-[暗影教堂]敌方控制"}]]