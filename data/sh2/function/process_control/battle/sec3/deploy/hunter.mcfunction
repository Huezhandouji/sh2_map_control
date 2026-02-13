function sh2:process_control/battle/char_select/hunter/run

#右键物品栏里的物品来部署
#后方部署
execute unless items entity @s hotbar.2 quartz_block[custom_data={"use_event":{"hunter_deploy_region_sec3_1":true}}] run function sh2:process_control/battle/sec3/deploy/item/hunter/rich
execute unless items entity @s hotbar.3 stone_bricks[custom_data={"use_event":{"hunter_deploy_region_sec3_2":true}}] run function sh2:process_control/battle/sec3/deploy/item/hunter/community
execute unless items entity @s hotbar.4 chiseled_polished_blackstone[custom_data={"use_event":{"hunter_deploy_region_sec3_3":true}}] run function sh2:process_control/battle/sec3/deploy/item/hunter/church
#临时影庭部署
execute if score point_status system matches 4.. unless items entity @s hotbar.5 scaffolding[custom_data={"use_event":{"hunter_deploy_region_sec3_4":true}}] run function sh2:process_control/battle/sec3/deploy/item/hunter/construction
execute if score point_status system matches ..3 unless items entity @s hotbar.5 barrier run function sh2:process_control/battle/sec3/deploy/item/hunter/construction_ban
execute unless items entity @s hotbar.6 barrier run function sh2:process_control/battle/sec3/deploy/item/hunter/hotel_ban
execute unless items entity @s hotbar.7 barrier run function sh2:process_control/battle/sec3/deploy/item/hunter/office_ban