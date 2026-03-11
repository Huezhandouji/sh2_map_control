execute positioned ~ ~-1 ~ store result score a calculate run scoreboard players get @e[tag=kovaci_mine,sort=nearest,limit=1] kovaci.mine_exist_time
scoreboard players set num calculate 20
scoreboard players set x calculate 2400
scoreboard players operation x calculate -= a calculate
scoreboard players operation x calculate /= num calculate
execute positioned ~ ~-1 ~ run data modify entity @s text set value [{"text":"还能存在","color":"green"},\
{"score":{"name":"x","objective":"calculate"}},{"text":"s","color":"white"},{"text":"\n左键点击这里捡起地雷","color":"yellow"}]
scoreboard players reset num calculate
scoreboard players reset a calculate
scoreboard players reset x calculate