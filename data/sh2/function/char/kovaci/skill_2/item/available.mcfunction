execute if score @s kovaci.mine_store matches 1 run item modify entity @s hotbar.2 {"function":"set_count","count":1}
execute if score @s kovaci.mine_store matches 2 run item modify entity @s hotbar.2 {"function":"set_count","count":2}
execute if items entity @s hotbar.2 tnt_minecart[custom_data={"use_event":{"skill_kovaci_2":true}}] run return fail
clear @s tnt_minecart[custom_data={"use_event":{"skill_kovaci_2":true}}]
kill @e[distance=..10,type=item,nbt={"Item":{"id":"minecraft:tnt_minecart","components":{"minecraft:custom_data":{"use_event":{"skill_kovaci_2":true}}}}}]
item replace entity @s hotbar.2 with tnt_minecart[consumable=\
{"animation":"brush","consume_seconds":3,"has_consume_particles":false,\
"sound":{"sound_id":"entity.zombie.attack_wooden_door","range":5}},\
custom_data={"use_event":{"skill_kovaci_2":true}},item_name=[{"text":"§a地雷 << 就绪"}],max_stack_size=2]