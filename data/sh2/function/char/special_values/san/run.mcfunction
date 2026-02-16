#超过最大值时改成最大值
execute if score @s SAN > @s SAN_MAX run scoreboard players operation @s SAN = @s SAN_MAX
#掉到0之后开始惩罚
scoreboard players set @s[scores={SAN=-999..0,san_punish_countdown=-1}] san_punish_countdown 100
execute if score @s san_punish_countdown matches 0.. run function sh2:char/special_values/san/punishing