#眩晕效果
attribute @s[scores={faint_time=1..}] jump_strength modifier add faint_ban_jump -9999 add_value
attribute @s[scores={faint_time=1..}] movement_speed modifier add faint_ban_move -9999 add_value
effect give @s[scores={faint_time=1..}] blindness 2 1 true
attribute @s[scores={faint_time=0}] jump_strength modifier remove faint_ban_jump
attribute @s[scores={faint_time=0}] movement_speed modifier remove faint_ban_move
scoreboard players remove @s faint_time 1