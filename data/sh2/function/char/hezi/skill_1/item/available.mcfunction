execute if items entity @s hotbar.1 blaze_powder[custom_data={"use_event":{"skill_hezi_1":true}}] run return fail
clear @s blaze_powder[custom_data={"use_event":{"skill_hezi_1":true}}]
kill @e[distance=..10,type=item,nbt={"Item":{"id":"minecraft:blaze_powder","components":{"minecraft:custom_data":{"use_event":{"skill_hezi_1":true}}}}}]
item replace entity @s hotbar.1 with blaze_powder[consumable={"animation":"none","consume_seconds":0,"has_consume_particles":false,"sound":{"sound_id":""}},custom_data={"use_event":{"skill_hezi_1":true}},item_name=[{"text":"§a漫不经心 << 就绪"}]]
