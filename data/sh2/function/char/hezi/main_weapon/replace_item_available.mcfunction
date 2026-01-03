#普攻可用时替换成正常物品
#sh2:left_click/hezi/skill0 这是一个定义的附魔，效果是当使用有这个附魔的锄头来戳刺攻击(这个东西通过物品堆叠组件添加到锄头上piercing_weapon={"deals_knockback":true,"dismounts":true})，执行main_weapon_attack函数
#去sh2/enchantment里面可以找到这个附魔
#物品都加上了一个属性修饰符attribute_modifiers=[{"type":"attack_damage","id":"base_attack_damage","operation":"add_value","amount":-100,"slot":"mainhand"},{"type":"attack_speed","amount":-3,"operation":"add_value","id":"base_attack_speed","slot":"mainhand"}]
#意思是让这个物品打不了人，但是我设置了戳刺攻击的附魔，打人通过指令实现
clear @s diamond_hoe[enchantments={"sh2:left_click/hezi/skill0":1}]
kill @e[distance=..5,type=item,nbt={"Item":{"id":"minecraft:diamond_hoe"}}]
execute if score @s ENERGY matches 30.. run item replace entity @s hotbar.0 with diamond_hoe[attribute_modifiers=[{"type":"attack_damage","id":"base_attack_damage","operation":"add_value","amount":-100,"slot":"mainhand"},{"type":"attack_speed","amount":-3,"operation":"add_value","id":"base_attack_speed","slot":"mainhand"}],enchantment_glint_override=false,enchantments={"sh2:left_click/hezi/skill0":1},piercing_weapon={"deals_knockback":true,"dismounts":true},custom_name="§a决爵-普通攻击[强化] << 就绪"]
execute if score @s ENERGY matches ..29 run item replace entity @s hotbar.0 with diamond_hoe[attribute_modifiers=[{"type":"attack_damage","id":"base_attack_damage","operation":"add_value","amount":-100,"slot":"mainhand"},{"type":"attack_speed","amount":-3,"operation":"add_value","id":"base_attack_speed","slot":"mainhand"}],enchantment_glint_override=false,enchantments={"sh2:left_click/hezi/skill0":1},piercing_weapon={"deals_knockback":true,"dismounts":true},custom_name="§a决爵-普通攻击§7[未强化]§a << 就绪"]
#这个附魔定义长这样
#注意这几个地方就好
# {
#     "effects": {                            #这个附魔的效果是什么？
#         "post_piercing_attack":[            #意思是当进行戳刺攻击的时候触发
#             {
#                 "effect": {
#                     "type": "run_function", #附魔触发的效果是执行一个函数
#                     "function": "sh2:char/hezi/main_weapon/main_weapon_attack"  #执行的函数
#                 }
#             }
#         ]
#     },
#     "anvil_cost": 2,          #这底下随便填就可以了，这些是什么附魔花费，魔咒的名字，什么最大等级，abababa
#     "description": "left_click_hezi_skill0",
#     "max_cost": {
#         "base": 2,
#         "per_level_above_first": 2
#     },
#     "min_cost": {
#         "base": 2,
#         "per_level_above_first": 2
#     },
#     "max_level": 1,
#     "slots": [
#         "any"
#     ],
#     "supported_items": [
#         "diamond_hoe"
#     ],
#     "weight": 5
# }
