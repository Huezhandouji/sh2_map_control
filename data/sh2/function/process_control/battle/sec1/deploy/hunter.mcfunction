function sh2:process_control/battle/char_select/hunter/run

#右键物品栏里的物品来部署
#后方部署
execute unless items entity @s hotbar.2 quartz_block[custom_data={"use_event":{"hunter_deploy_region_sec1_1":true}}] run function sh2:process_control/battle/sec1/deploy/item/hunter/rich

#临时影庭部署
execute if score point_status system matches 4.. unless items entity @s hotbar.3 stone_bricks[custom_data={"use_event":{"hunter_deploy_region_sec1_2":true}}] run function sh2:process_control/battle/sec1/deploy/item/hunter/community

execute if score point_status system matches ..3 unless items entity @s hotbar.3 barrier run function sh2:process_control/battle/sec1/deploy/item/hunter/community_ban

execute unless items entity @s hotbar.4 barrier run function sh2:process_control/battle/sec1/deploy/item/hunter/church_ban
execute unless items entity @s hotbar.5 barrier run function sh2:process_control/battle/sec1/deploy/item/hunter/construction_ban
execute unless items entity @s hotbar.6 barrier run function sh2:process_control/battle/sec1/deploy/item/hunter/hotel_ban
execute unless items entity @s hotbar.7 barrier run function sh2:process_control/battle/sec1/deploy/item/hunter/office_ban