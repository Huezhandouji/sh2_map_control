function sh2:process_control/battle/char_select/hunter/run

#右键物品栏里的物品来部署
#后方部署
execute unless items entity @s hotbar.2 quartz_block[custom_data={"use_event":{"hunter_deploy_region_sec5_1":true}}] run function sh2:process_control/battle/sec5_final/deploy/item/hunter/rich
execute unless items entity @s hotbar.3 stone_bricks[custom_data={"use_event":{"hunter_deploy_region_sec5_2":true}}] run function sh2:process_control/battle/sec5_final/deploy/item/hunter/community
execute unless items entity @s hotbar.4 chiseled_polished_blackstone[custom_data={"use_event":{"hunter_deploy_region_sec5_3":true}}] run function sh2:process_control/battle/sec5_final/deploy/item/hunter/church
execute unless items entity @s hotbar.5 scaffolding[custom_data={"use_event":{"hunter_deploy_region_sec5_4":true}}] run function sh2:process_control/battle/sec5_final/deploy/item/hunter/construction
execute unless items entity @s hotbar.6 oak_door[custom_data={"use_event":{"hunter_deploy_region_sec5_5":true}}] run function sh2:process_control/battle/sec5_final/deploy/item/hunter/hotel
execute unless items entity @s hotbar.7 barrier run function sh2:process_control/battle/sec5_final/deploy/item/hunter/office_ban