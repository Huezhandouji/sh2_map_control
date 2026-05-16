execute if items entity @s hotbar.3 redstone_block[custom_data={"use_event":{"skill_red_3":true}}] run return fail
clear @s redstone_block[custom_data={"use_event":{"skill_red_3":true}}]
kill @e[distance=..10,type=item,nbt={"Item":{"id":"minecraft:redstone_block","components":{"minecraft:custom_data":{"use_event":{"skill_red_3":true}}}}}]
item replace entity @s hotbar.3 with redstone_block[consumable={"animation":"none","consume_seconds":0,"has_consume_particles":false,"sound":{"sound_id":""}},custom_data={"use_event":{"skill_red_3":true}},item_name=[{"text":"§a黯然销魂 << 就绪"}]]