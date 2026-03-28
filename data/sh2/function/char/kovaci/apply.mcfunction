scoreboard players set @s character 102
scoreboard players set @s apply_character 0
tag @s add kovaci

scoreboard objectives add kovaci.is_aimming dummy kovaci.is_aimming
scoreboard objectives add kovaci.reload_cd dummy kovaci.reload_cd
scoreboard players set @s kovaci.reload_cd -1
scoreboard objectives add kovaci.ammo dummy kovaci.ammo
scoreboard players set @s kovaci.ammo 20
scoreboard objectives add kovaci.bullet_exist_time dummy kovaci.bullet_exist_time
scoreboard objectives add kovaci.shoot_interval dummy kovaci.shoot_interval
scoreboard players set @s kovaci.shoot_interval 0
scoreboard objectives add kovaci.grenade_motion dummy grenade_motion
scoreboard objectives add kovaci.cd1 dummy kovaci.cd1
scoreboard players set @s kovaci.cd1 0

scoreboard objectives add kovaci.cd2 dummy kovaci.cd2
scoreboard players set @s kovaci.cd2 0
scoreboard objectives add kovaci.mine_exist_time dummy kovaci.mine_exist_time
scoreboard objectives add kovaci.mine_store dummy kovaci.mine_store
scoreboard players set @s kovaci.mine_store 2
scoreboard objectives add kovaci.mine_store_cd dummy mine_store_cd
scoreboard players set @s kovaci.mine_store_cd 0
scoreboard objectives add kovaci.uuid_check dummy kovaci.uuid_check

scoreboard players set @s SAN_MAX 100
scoreboard players set @s SAN 100
scoreboard players set @s ENERGY_MAX 150
scoreboard players set @s ENERGY 150
attribute @s max_health modifier add add_max_health 30 add_value

item replace entity @s armor.head with iron_helmet[enchantments={"binding_curse":1,"projectile_protection":2},enchantment_glint_override=false]
item replace entity @s armor.chest with leather_chestplate[dyed_color=1263104,enchantments={"binding_curse":1,"protection":1}]
item replace entity @s armor.legs with leather_leggings[dyed_color=5998848,enchantments={"binding_curse":1,"protection":1},enchantment_glint_override=false]
item replace entity @s armor.feet with leather_boots[enchantments={"binding_curse":1,"protection":1,"blast_protection":2},enchantment_glint_override=false]

effect give @s instant_health 1 20 true