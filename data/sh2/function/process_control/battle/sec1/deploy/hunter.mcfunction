function sh2:process_control/battle/char_select/hunter/run

#右键物品栏里的物品来部署
#后方部署
execute unless items entity @s hotbar.2 quartz_block[custom_data={"use_event":{"hunter_deploy_region_1":true}}] run clear @s quartz_block[custom_data={"use_event":{"hunter_deploy_region_1":true}}]
execute unless items entity @s hotbar.2 quartz_block[custom_data={"use_event":{"hunter_deploy_region_1":true}}] anchored eyes run kill @e[type=item,distance=..10,nbt={"Item":{"id":"minecraft:quartz_block","components":{"minecraft:custom_data":{"use_event":{"hunter_deploy_region_1":true}}}}}]
execute unless items entity @s hotbar.2 quartz_block[custom_data={"use_event":{"hunter_deploy_region_1":true}}] run item replace entity @s hotbar.2 with quartz_block[custom_data={"use_event":{"hunter_deploy_region_1":true}},consumable={"animation":"none","consume_seconds":0,"has_consume_particles":false,"sound":{"sound_id":""}},item_name="§a部署§e->后方据点[别墅区]"]

#临时影庭部署
execute if score point_status system matches 4.. unless items entity @s hotbar.3 stone_bricks[custom_data={"use_event":{"hunter_deploy_region_2":true}}] run clear @s stone_bricks[custom_data={"use_event":{"hunter_deploy_region_2":true}}]
execute if score point_status system matches 4.. unless items entity @s hotbar.3 stone_bricks[custom_data={"use_event":{"hunter_deploy_region_2":true}}] anchored eyes run kill @e[type=item,distance=..10,nbt={"Item":{"id":"minecraft:stone_bricks","components":{"minecraft:custom_data":{"use_event":{"hunter_deploy_region_2":true}}}}}]
execute if score point_status system matches 4.. unless items entity @s hotbar.3 stone_bricks[custom_data={"use_event":{"hunter_deploy_region_2":true}}] run item replace entity @s hotbar.3 with stone_bricks[custom_data={"use_event":{"hunter_deploy_region_2":true}},consumable={"animation":"none","consume_seconds":0,"has_consume_particles":false,"sound":{"sound_id":""}},item_name="§a部署§e->前线地基[小型社区]附近"]

execute if score point_status system matches ..3 unless items entity @s hotbar.3 barrier run clear @s stone_bricks[custom_data={"use_event":{"hunter_deploy_region_2":true}}]
execute if score point_status system matches ..3 unless items entity @s hotbar.3 barrier run clear @s barrier[custom_data={"slothoder":true}]
execute if score point_status system matches ..3 unless items entity @s hotbar.3 barrier anchored eyes run kill @e[type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slothoder":true}}}}]
execute if score point_status system matches ..3 unless items entity @s hotbar.3 barrier run item replace entity @s hotbar.3 with barrier[custom_data={"slothoder":true},item_name=[{"text":"§c无法部署§e->前线地基[小型社区]附近§c尚未建立"}]]