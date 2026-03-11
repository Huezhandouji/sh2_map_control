attribute @s movement_speed modifier remove minus_movement_speed
item replace entity @s hotbar.0 with air
playsound entity.ender_dragon.flap master @a ~ ~ ~ 0.5
scoreboard players set @s[scores={kovaci.is_aimming=1}] kovaci.is_aimming 0