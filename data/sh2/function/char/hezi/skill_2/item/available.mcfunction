execute if items entity @s hotbar.2 iron_ingot[custom_data={"use_event":{"skill_hezi_2":true}}] run return fail
#这是大头，这个技能物品是右键点击来释放的，所有不能用戳刺攻击的左键检测了，得用成就来检测
clear @s iron_ingot[custom_data={"use_event":{"skill_hezi_2":true}}]
kill @e[distance=..10,type=item,nbt={"Item":{"id":"minecraft:iron_ingot","components":{"minecraft:custom_data":{"use_event":{"skill_hezi_2":true}}}}}]
#在物品组件里面，我写了一个consumable，意思是让这个物品可以被吃掉。
#在custom_data，也就是自定义的数据，里面，我写了custom_data={"use_event":{"skill_hezi_2":true}} 这是因为进度成就里面要写用了什么特定的技能物品才会触发，进度不能像附魔一样直接给在物品上
item replace entity @s hotbar.2 with iron_ingot[consumable={"animation":"none","consume_seconds":0,"has_consume_particles":false,"sound":{"sound_id":""}},custom_data={"use_event":{"skill_hezi_2":true}},item_name=[{"text":"§a突进 << 就绪"}]]
#这个进度成就，在这个数据包sh2/advancement/skill/hezi里面，都是用来检测技能物品右键的进度成就。
#这个进度定义文件长这样，这就是模板了，只需要看几个地方就行
# {
#     "criteria": {
#         "team_select0":{
#             "trigger": "consume_item",
#             "conditions": {
#                 "item": {
#                     "items": "iron_ingot", #技能物品id是啥？
#                     "components": {"custom_data": {"use_event":{"skill_hezi_2":true}}} #物品里面用来知道这个物品时用来放技能的custom_data是什么？
#                 }
#             }
#         }
#     },
#     "rewards": {
#         "function": "sh2:char/hezi/skill_2/use" #吃掉这个物品之后执行的函数是什么？
#     }
# }
#这样，使用了这个技能物品，也就是吃了，就会执行函数sh2:char/hezi/skill_2/use