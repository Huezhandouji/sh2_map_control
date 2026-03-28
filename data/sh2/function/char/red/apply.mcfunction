scoreboard players set @s character 1
scoreboard players set @s apply_character 0
tag @s add red

scoreboard objectives add red.bleed dummy red.bleed

scoreboard objectives add red.cd0 dummy red.cd0
scoreboard players set @s red.cd0 0
scoreboard objectives add red.cd1 dummy red.cd1
scoreboard players set @s red.cd1 0
scoreboard objectives add red.skill1_count dummy red.skill1_count
scoreboard players set @s red.skill1_count 0
scoreboard objectives add red.cd2 dummy red.cd2
scoreboard players set @s red.cd2 0

scoreboard players set @s SAN_MAX 100
scoreboard players set @s SAN 100
attribute @s max_health modifier add add_max_health 30 add_value

item replace entity @s armor.head with leather_helmet[dyed_color=16711680,enchantments={"binding_curse":1,"protection":1},enchantment_glint_override=false]
item replace entity @s armor.chest with iron_chestplate[enchantments={"binding_curse":1,"protection":1}]
item replace entity @s armor.legs with leather_leggings[dyed_color=9633792,enchantments={"binding_curse":1,"protection":1},enchantment_glint_override=false]
item replace entity @s armor.feet with leather_boots[dyed_color=3473408,enchantments={"binding_curse":1,"protection":1,"blast_protection":2},enchantment_glint_override=false]

effect give @s instant_health 1 20 true