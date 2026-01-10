#禁锢
attribute @s[scores={immobilize_time=1..}] jump_strength modifier add immobilize_ban_jump -9999 add_value
attribute @s[scores={immobilize_time=1..}] movement_speed modifier add immobilize_ban_move -9999 add_value

attribute @s[scores={immobilize_time=0}] jump_strength modifier remove immobilize_ban_jump
attribute @s[scores={immobilize_time=0}] movement_speed modifier remove immobilize_ban_move
scoreboard players remove @s immobilize_time 1