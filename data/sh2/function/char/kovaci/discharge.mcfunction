scoreboard players set @s character 0
scoreboard players set @s apply_character 0
tag @s remove kovaci
attribute @s max_health modifier remove minecraft:add_max_health
kill @e[tag=kovaci_bullet]

scoreboard objectives remove kovaci.ammo
scoreboard objectives remove kovaci.bullet_exist_time
scoreboard objectives remove kovaci.is_aimming
scoreboard objectives remove kovaci.reload_cd
scoreboard objectives remove kovaci.shoot_interval
scoreboard objectives remove kovaci.grenade_motion
scoreboard objectives remove kovaci.cd2
scoreboard objectives remove kovaci.mine_exist_time
scoreboard objectives remove kovaci.uuid_check