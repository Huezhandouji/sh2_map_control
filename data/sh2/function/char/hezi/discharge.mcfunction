#当玩家的apply_character设为-1，会执行这个函数还解除这个角色的使用
#清零自己的character分数，销毁使用的计分板
scoreboard players set @s character 0
scoreboard players set @s apply_character 0
scoreboard objectives remove hezi.cd0
scoreboard objectives remove hezi.cd1
scoreboard objectives remove hezi.cd2
scoreboard objectives remove hezi.cd3
scoreboard objectives remove hezi.process.cd2
scoreboard objectives remove hezi.process.cd3
scoreboard objectives remove hezi.process.passivity
tag @s remove hezi

attribute @s max_health modifier remove add_max_health