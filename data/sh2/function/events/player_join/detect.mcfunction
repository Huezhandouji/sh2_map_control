#第一次加入
execute as @a unless score @s player_leave matches 0.. run function sh2:events/player_join/first_join_action

#以后每次加入
execute as @a[scores={player_leave=1..}] if score game_process system matches 1 run function sh2:events/player_join/process_1

scoreboard players set @a[scores={player_leave=1..}] player_leave 0