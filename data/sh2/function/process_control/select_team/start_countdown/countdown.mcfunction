execute unless score ready_population system = total_take_part_population system run function sh2:process_control/select_team/start_countdown/terminade
execute if score shadow_population system matches 0 run function sh2:process_control/select_team/start_countdown/terminade
execute if score hunter_population system matches 0 run function sh2:process_control/select_team/start_countdown/terminade
     
scoreboard players operation a calculate = game_start_countdown system
scoreboard players set const calculate 20
scoreboard players operation a calculate %= const calculate
execute if score a calculate matches 0 run scoreboard players operation b calculate = game_start_countdown system
execute if score a calculate matches 0 run scoreboard players operation b calculate /= const calculate
execute if score a calculate matches 0 run title @a title [{"text":"§e对局将在"},{"score":{"name":"b","objective":"calculate"},"color":"dark_purple"},{"text":"§e秒后开启"}]
execute if score a calculate matches 0 as @a at @s run playsound ui.button.click master @s ~ ~ ~
scoreboard players reset a calculate
scoreboard players reset b calculate
scoreboard players reset const calculate

execute if score game_start_countdown system matches 1.. run scoreboard players remove game_start_countdown system 1