function sh2:process_control/battle/char_select/shadow/run

#右键物品栏里的物品来部署
#后方部署
execute unless items entity @s hotbar.2 scaffolding[custom_data={"use_event":{"shadow_deploy_region_sec2_4":true}}] run clear @s scaffolding[custom_data={"use_event":{"shadow_deploy_region_sec2_4":true}}]
execute unless items entity @s hotbar.2 scaffolding[custom_data={"use_event":{"shadow_deploy_region_sec2_4":true}}] anchored eyes run kill @e[type=item,distance=..10,nbt={"Item":{"id":"minecraft:scaffolding","components":{"minecraft:custom_data":{"use_event":{"shadow_deploy_region_sec2_4":true}}}}}]
execute unless items entity @s hotbar.2 scaffolding[custom_data={"use_event":{"shadow_deploy_region_sec2_4":true}}] run item replace entity @s hotbar.2 with scaffolding[custom_data={"use_event":{"shadow_deploy_region_sec2_4":true}},consumable={"animation":"none","consume_seconds":0,"has_consume_particles":false,"sound":{"sound_id":""}},item_name="§a部署§e->后方据点[暗影教堂和建筑工地中间的高速公路底部]"]
#临时影庭部署
execute if score point_status system matches 1..2 unless items entity @s hotbar.3 chiseled_polished_blackstone[custom_data={"use_event":{"shadow_deploy_region_sec2_3":true}}] run clear @s chiseled_polished_blackstone[custom_data={"use_event":{"shadow_deploy_region_sec2_3":true}}]
execute if score point_status system matches 1..2 unless items entity @s hotbar.3 chiseled_polished_blackstone[custom_data={"use_event":{"shadow_deploy_region_sec2_3":true}}] anchored eyes run kill @e[type=item,distance=..10,nbt={"Item":{"id":"minecraft:chiseled_polished_blackstone","components":{"minecraft:custom_data":{"use_event":{"shadow_deploy_region_sec2_3":true}}}}}]
execute if score point_status system matches 1..2 unless items entity @s hotbar.3 chiseled_polished_blackstone[custom_data={"use_event":{"shadow_deploy_region_sec2_3":true}}] run item replace entity @s hotbar.3 with chiseled_polished_blackstone[custom_data={"use_event":{"shadow_deploy_region_sec2_3":true}},consumable={"animation":"none","consume_seconds":0,"has_consume_particles":false,"sound":{"sound_id":""}},item_name="§a部署§e->前线影庭[暗影教堂]"]

execute if score point_status system matches 3.. unless items entity @s hotbar.3 barrier run clear @s chiseled_polished_blackstone[custom_data={"use_event":{"shadow_deploy_region_sec2_3":true}}]
execute if score point_status system matches 3.. unless items entity @s hotbar.3 barrier run clear @s barrier[custom_data={"slothoder":true}]
execute if score point_status system matches 3.. unless items entity @s hotbar.3 barrier anchored eyes run kill @e[type=item,nbt={"Item":{"id":"minecraft:barrier","components":{"minecraft:custom_data":{"slothoder":true}}}}]
execute if score point_status system matches 3.. unless items entity @s hotbar.3 barrier run item replace entity @s hotbar.3 with barrier[custom_data={"slothoder":true},item_name=[{"text":"§c无法部署§e->前线影庭[暗影教堂]§c失去控制"}]]