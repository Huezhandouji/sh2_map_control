execute if items entity @s hotbar.1 iron_horse_armor[custom_data={"use_event":{"skill_kovaci_1":true}}] run return fail
clear @s iron_horse_armor[custom_data={"use_event":{"skill_kovaci_1":true}}]
kill @e[distance=..10,type=item,nbt={"Item":{"id":"minecraft:iron_horse_armor","components":{"minecraft:custom_data":{"use_event":{"skill_kovaci_1":true}}}}}]
item replace entity @s hotbar.1 with iron_horse_armor[consumable={"animation":"none","consume_seconds":0,"has_consume_particles":false,"sound":{"sound_id":""}},custom_data={"use_event":{"skill_kovaci_1":true}},item_name=[{"text":"§a能量炸炮 << 就绪"}]]
