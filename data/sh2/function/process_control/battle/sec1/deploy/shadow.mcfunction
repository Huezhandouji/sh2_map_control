function sh2:process_control/battle/char_select/shadow/run

#右键物品栏里的物品来部署
#临时影庭部署
execute if score point_status system matches 1..2 unless items entity @s hotbar.2 stone_bricks[custom_data={"use_event":{"shadow_deploy_region_sec1_2":true}}] run function sh2:process_control/battle/sec1/deploy/item/shadow/community

execute if score point_status system matches 3.. unless items entity @s hotbar.2 barrier run function sh2:process_control/battle/sec1/deploy/item/shadow/community_ban
#后方部署
#暗影教堂
execute unless items entity @s hotbar.3 chiseled_polished_blackstone[custom_data={"use_event":{"shadow_deploy_region_sec1_3":true}}] run function sh2:process_control/battle/sec1/deploy/item/shadow/church
#建筑工地
execute unless items entity @s hotbar.4 scaffolding[custom_data={"use_event":{"shadow_deploy_region_sec1_4":true}}] run function sh2:process_control/battle/sec1/deploy/item/shadow/construction
#酒店
execute unless items entity @s hotbar.5 oak_door[custom_data={"use_event":{"shadow_deploy_region_sec1_5":true}}] run function sh2:process_control/battle/sec1/deploy/item/shadow/hotel
#写字楼
execute unless items entity @s hotbar.6 beacon[custom_data={"use_event":{"shadow_deploy_region_sec1_6":true}}] run function sh2:process_control/battle/sec1/deploy/item/shadow/office