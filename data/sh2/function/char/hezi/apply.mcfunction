#初始化角色，这个地图所有的角色都是单人使用，不用搞什么uid那么麻烦
#设定角色标识计分板分数
scoreboard players set @s character 101
#把用来应用角色的计分板归零
scoreboard players set @s apply_character 0
#创建并初始化需要的计分板
scoreboard objectives add hezi.cd0 dummy hezi.cd0
scoreboard players set @s hezi.cd0 0
scoreboard objectives add hezi.cd1 dummy hezi.cd0
scoreboard players set @s hezi.cd1 0
scoreboard objectives add hezi.cd2 dummy heze.cd2
scoreboard players set @s hezi.cd2 0
scoreboard objectives add hezi.cd3 dummy hezi.cd3
scoreboard players set @s hezi.cd3 0
scoreboard objectives add hezi.process.cd2 dummy hezi.process.cd2
scoreboard players set @s hezi.process.cd2 -1
scoreboard objectives add hezi.process.cd3 dummy hezi.process.cd3
scoreboard players set @s hezi.process.cd3 -1
scoreboard objectives add hezi.process.passivity dummy hezi.process.passivity
scoreboard players set @s hezi.process.passivity -1
tag @s add hezi

scoreboard players set @s SAN_MAX 150
scoreboard players set @s SAN 150
scoreboard players set @s ENERGY_MAX 100
scoreboard players set @s ENERGY 100
attribute @s max_health modifier add add_max_health 40 add_value


item replace entity @s armor.head with leather_helmet[dyed_color=16777215,enchantments={"binding_curse":1,"protection":1},enchantment_glint_override=false]
item replace entity @s armor.chest with leather_chestplate[dyed_color=9633792,enchantments={"binding_curse":1,"protection":2}]
item replace entity @s armor.legs with iron_leggings[enchantments={"binding_curse":1,"protection":1},enchantment_glint_override=false]
item replace entity @s armor.feet with leather_boots[dyed_color=5046272,enchantments={"binding_curse":1,"protection":1,"blast_protection":2},enchantment_glint_override=false]

effect give @s instant_health 1 20 true