scoreboard players set @s SAN -9999
execute if score @s hezi.process.passivity matches 300 run function sh2:char/hezi/passivity/mad_line_2
execute if score 1_4s clock matches 0 run playsound entity.blaze.hurt
execute if score 1s clock matches 0 run particle dust{"color":16711680,"scale":4} ~ ~ ~ 1 1 1 1 10 normal

execute if score @s hezi.process.passivity matches 0 run scoreboard players set @s SAN -1