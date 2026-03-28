execute if items entity @s hotbar.2 redstone[custom_data={"use_event":{"skill_red_2":true}}] run return fail
clear @s redstone[custom_data={"use_event":{"skill_red_2":true}}]
kill @e[distance=..10,type=item,nbt={"Item":{"id":"minecraft:redstone","components":{"minecraft:custom_data":{"use_event":{"skill_red_2":true}}}}}]
item replace entity @s hotbar.2 with redstone[consumable={"animation":"none","consume_seconds":0,"has_consume_particles":false,"sound":{"sound_id":""}},custom_data={"use_event":{"skill_red_2":true}},item_name=[{"text":"§a煞气震赫 << 就绪"}]]