execute if items entity @s hotbar.1 fermented_spider_eye[custom_data={"use_event":{"skill_red_1":true}}] run return fail
clear @s fermented_spider_eye[custom_data={"use_event":{"skill_red_1":true}}]
kill @e[distance=..10,type=item,nbt={"Item":{"id":"minecraft:fermented_spider_eye","components":{"minecraft:custom_data":{"use_event":{"skill_red_1":true}}}}}]
item replace entity @s hotbar.1 with fermented_spider_eye[consumable={"animation":"none","consume_seconds":0,"has_consume_particles":false,"sound":{"sound_id":""}},custom_data={"use_event":{"skill_red_1":true}},item_name=[{"text":"§a孤妄自赏 << 就绪"}]]
