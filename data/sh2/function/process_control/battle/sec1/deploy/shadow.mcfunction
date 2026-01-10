function sh2:process_control/battle/char_select/shadow/run

#右键物品栏里的物品来部署
#后方部署
execute unless items entity @s hotbar.2 chiseled_polished_blackstone[custom_data={"use_event":{"shadow_deploy_region_sec1_3":true}}] run clear @s chiseled_polished_blackstone[custom_data={"use_event":{"shadow_deploy_region_sec1_3":true}}]
execute unless items entity @s hotbar.2 chiseled_polished_blackstone[custom_data={"use_event":{"shadow_deploy_region_sec1_3":true}}] anchored eyes run kill @e[type=item,distance=..10,nbt={"Item":{"id":"minecraft:chiseled_polished_blackstone","components":{"minecraft:custom_data":{"use_event":{"shadow_deploy_region_sec1_3":true}}}}}]
execute unless items entity @s hotbar.2 chiseled_polished_blackstone[custom_data={"use_event":{"shadow_deploy_region_sec1_3":true}}] run item replace entity @s hotbar.2 with chiseled_polished_blackstone[custom_data={"use_event":{"shadow_deploy_region_sec1_3":true}},consumable={"animation":"none","consume_seconds":0,"has_consume_particles":false,"sound":{"sound_id":""}},item_name="§a部署§e->后方据点[暗影教堂]"]

#临时影庭部署
execute if score point_status system matches 1..2 unless items entity @s hotbar.3 stone_bricks[custom_data={"use_event":{"shadow_deploy_region_sec1_2":true}}] run clear @s stone_bricks[custom_data={"use_event":{"shadow_deploy_region_sec1_2":true}}]
execute if score point_status system matches 1..2 unless items entity @s hotbar.3 stone_bricks[custom_data={"use_event":{"shadow_deploy_region_sec1_2":true}}] anchored eyes run kill @e[type=item,distance=..10,nbt={"Item":{"id":"minecraft:stone_bricks","components":{"minecraft:custom_data":{"use_event":{"shadow_deploy_region_sec1_2":true}}}}}]
execute if score point_status system matches 1..2 unless items entity @s hotbar.3 stone_bricks[custom_data={"use_event":{"shadow_deploy_region_sec1_2":true}}] run item replace entity @s hotbar.3 with stone_bricks[custom_data={"use_event":{"shadow_deploy_region_sec1_2":true}},consumable={"animation":"none","consume_seconds":0,"has_consume_particles":false,"sound":{"sound_id":""}},item_name="§a部署§e->前线影庭[小型社区]"]

execute if score point_status system matches 3.. unless items entity @s hotbar.3 barrier run clear @s stone_bricks[custom_data={"use_event":{"shadow_deploy_region_sec1_2":true}}]
execute if score point_status system matches 3.. unless items entity @s hotbar.3 barrier run clear @s barrier[custom_data={"slothoder":true}]
execute if score point_status system matches 3.. unless items entity @s hotbar.3 barrier anchored eyes run kill @e[type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slothoder":true}}}}]
execute if score point_status system matches 3.. unless items entity @s hotbar.3 barrier run item replace entity @s hotbar.3 with barrier[custom_data={"slothoder":true},item_name=[{"text":"§c无法部署§e->前线影庭[小型社区]§c失去控制"}]]