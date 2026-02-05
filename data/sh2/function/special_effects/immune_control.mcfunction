tag @s[scores={faint_time=0..}] add get_controlled
tag @s[scores={immobilize_time=0..}] add get_controlled
tag @s[scores={silence_time=0..}] add get_controlled
execute if entity @s[tag=get_controlled] at @s run function sh2:special_effects/immune_control_line_4
scoreboard players set @s immobilize_time 0
scoreboard players set @s faint_time 0
scoreboard players set @s silence_time -1
scoreboard players remove @s immune_control_time 1