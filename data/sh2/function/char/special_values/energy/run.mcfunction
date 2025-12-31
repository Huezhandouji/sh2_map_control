#附近没有敌人时 缓慢恢复能量
execute if score 2s clock matches 0 unless entity @a[team=shadow,distance=..20] run scoreboard players add @s ENERGY 2
#超出上限后设为上限
execute if score @s ENERGY >= @s ENERGY_MAX run scoreboard players operation @s ENERGY = @s ENERGY_MAX