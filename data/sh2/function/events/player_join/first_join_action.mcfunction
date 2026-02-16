scoreboard players set @s team_select_trigger -1

scoreboard players set @s player_leave 0
scoreboard players set @s ready 0
team join spectator

scoreboard players set @s page_menu_select_char 1

scoreboard players set @s SAN 100
scoreboard players set @s SAN_MAX 100
scoreboard players set @s san_punish_countdown -1
scoreboard players set @s ENERGY 100
scoreboard players set @s ENERGY_MAX 100
scoreboard players set @s EVOLUTION 0
scoreboard players set @s apply_character 0
scoreboard players set @s build_countdown -1
scoreboard players set @s character 0
scoreboard players set @s conditions 0
scoreboard players set @s ex_selected 0

scoreboard players set @s in_battle 0
scoreboard players set @s faint_time -1
scoreboard players set @s silence_time -1
scoreboard players set @s immobilize_time -1
tellraw @a [{"selector":"@s","color":"yellow"},{"text":"是第一次加入","color":"green"}]