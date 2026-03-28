playsound entity.ender_dragon.growl
execute if score @s immune_control_time matches ..300 run scoreboard players add @s immune_control_time 300
effect give @s absorption 15 3 true