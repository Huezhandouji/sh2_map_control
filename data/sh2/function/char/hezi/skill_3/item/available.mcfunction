execute if items entity @s hotbar.3 magma_cream[custom_data={"use_event":{"skill_hezi_3":true}}] run return fail
clear @s magma_cream[custom_data={"use_event":{"skill_hezi_3":true}}]
kill @e[distance=..10,type=item,nbt={"Item":{"id":"minecraft:magma_cream","components":{"minecraft:custom_data":{"use_event":{"skill_hezi_3":true}}}}}]
item replace entity @s hotbar.3 with magma_cream[consumable={"animation":"none","consume_seconds":0,"has_consume_particles":false,"sound":{"sound_id":""}},custom_data={"use_event":{"skill_hezi_3":true}},item_name=[{"text":"§a圆弧斩 << 就绪"}]]
