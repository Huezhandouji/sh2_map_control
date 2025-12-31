#眩晕的禁止移动，失明和眩晕解除
attribute @s[scores={faint_time=1..}] jump_strength modifier add faint_ban_jump -9999 add_value
attribute @s[scores={faint_time=1..}] movement_speed modifier add faint_ban_move -9999 add_value
effect give @s[scores={faint_time=1..}] blindness 2 1 true

attribute @s[scores={faint_time=0}] jump_strength modifier remove faint_ban_jump
attribute @s[scores={faint_time=0}] movement_speed modifier remove faint_ban_move
tellraw @s[scores={faint_time=0}] [{"text":"§e>>你的眩晕解除了"}]
scoreboard players remove @s faint_time 1