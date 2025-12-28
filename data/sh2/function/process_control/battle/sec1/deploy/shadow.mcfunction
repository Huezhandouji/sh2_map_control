function sh2:process_control/battle/char_select/shadow/run

#右键物品栏里的物品来部署
#后方部署
execute unless items entity @s hotbar.2 chiseled_polished_blackstone run clear @s chiseled_polished_blackstone[custom_data={"use_event":{"shadow_deploy_region_2":true}}]
execute unless items entity @s hotbar.2 chiseled_polished_blackstone anchored eyes run kill @e[type=item,distance=..10,nbt={"Item":{"id":"minecraft:chiseled_polished_blackstone","components":{"minecraft:custom_data":{"use_event":{"shadow_deploy_region_2":true}}}}}]
execute unless items entity @s hotbar.2 chiseled_polished_blackstone run item replace entity @s hotbar.2 with chiseled_polished_blackstone[custom_data={"use_event":{"shadow_deploy_region_2":true}}]