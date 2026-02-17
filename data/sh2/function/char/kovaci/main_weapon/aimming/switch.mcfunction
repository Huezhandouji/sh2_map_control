scoreboard players add @s kovaci.is_aimming 1
scoreboard players set @s[scores={kovaci.is_aimming=2..}] kovaci.is_aimming 0
execute if score @s kovaci.is_aimming matches 1 run function sh2:char/kovaci/main_weapon/aimming/enable
execute if score @s kovaci.is_aimming matches 0 run function sh2:char/kovaci/main_weapon/aimming/disable