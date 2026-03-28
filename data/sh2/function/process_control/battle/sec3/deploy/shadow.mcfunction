function sh2:process_control/battle/char_select/shadow/run

#右键物品栏里的物品来部署
execute unless items entity @s hotbar.2 barrier run function sh2:process_control/battle/sec3/deploy/item/shadow/community_ban
execute unless items entity @s hotbar.3 barrier run function sh2:process_control/battle/sec3/deploy/item/shadow/church_ban
#后方部署
#建筑工地
execute if score point_status system matches 1..2 unless items entity @s hotbar.4 scaffolding[custom_data={"use_event":{"shadow_deploy_region_sec3_4":true}}] run function sh2:process_control/battle/sec3/deploy/item/shadow/construction
execute if score point_status system matches 3.. unless items entity @s hotbar.4 barrier run function sh2:process_control/battle/sec3/deploy/item/shadow/construction_ban
#酒店
execute unless items entity @s hotbar.5 oak_door[custom_data={"use_event":{"shadow_deploy_region_sec3_5":true}}] run function sh2:process_control/battle/sec3/deploy/item/shadow/hotel
#写字楼
execute unless items entity @s hotbar.6 beacon[custom_data={"use_event":{"shadow_deploy_region_sec3_6":true}}] run function sh2:process_control/battle/sec3/deploy/item/shadow/office