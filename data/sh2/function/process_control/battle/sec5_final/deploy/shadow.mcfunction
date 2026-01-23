function sh2:process_control/battle/char_select/shadow/run

#右键物品栏里的物品来部署
execute unless items entity @s hotbar.2 barrier run function sh2:process_control/battle/sec5_final/deploy/item/shadow/community_ban
execute unless items entity @s hotbar.3 barrier run function sh2:process_control/battle/sec5_final/deploy/item/shadow/church_ban
execute unless items entity @s hotbar.4 barrier run function sh2:process_control/battle/sec5_final/deploy/item/shadow/construction_ban
execute unless items entity @s hotbar.5 barrier run function sh2:process_control/battle/sec5_final/deploy/item/shadow/hotel_ban
#写字楼
execute if score point_status system matches 1 unless items entity @s hotbar.6 beacon[custom_data={"use_event":{"shadow_deploy_region_sec5_6":true}}] run function sh2:process_control/battle/sec5_final/deploy/item/shadow/office
execute if score point_status system matches 2 unless items entity @s hotbar.6 barrier run function sh2:process_control/battle/sec5_final/deploy/item/shadow/office_ban