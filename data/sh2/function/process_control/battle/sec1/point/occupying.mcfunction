#修改bossbar
scoreboard players operation a calculate = hunter_stronghold_occupy_value system
scoreboard players set num calculate 4
scoreboard players operation a calculate /= num calculate

scoreboard players set in_point_shadow_population system 0
scoreboard players set in_point_hunter_population system 0
execute as @a[team=shadow] positioned -243.5 8 73.5 if entity @s[distance=..10] run scoreboard players add in_point_shadow_population system 1
execute as @a[team=hunter] positioned -243.5 8 73.5 if entity @s[distance=..10] run scoreboard players add in_point_hunter_population system 1
bossbar set shadow_display name [{"text":"§e猎影人已建立前线据点地基 §6占领值: "},{"score":{"name":"a","objective":"calculate"}},{"text":" / 100 §b// 据点内人数 §d影"},{"score":{"name":"in_point_shadow_population","objective":"system"}},{"text":" §e猎影人"},{"score":{"name":"in_point_hunter_population","objective":"system"}}]
execute store result bossbar shadow_display value run scoreboard players get a calculate

scoreboard players reset a calculate
scoreboard players reset num calculate

#增减占领值
execute positioned -243.5 6 73.5 as @a[team=hunter,distance=..10,scores={in_battle=1}] run scoreboard players add hunter_stronghold_occupy_value system 1
execute if score hunter_stronghold_occupy_value system matches 1.. positioned -243.5 8 73.5 as @a[team=shadow,distance=..10,scores={in_battle=1}] run scoreboard players remove hunter_stronghold_occupy_value system 1
execute if score second system matches 20 positioned -243.5 8 73.5 run function sh2:process_control/battle/sec1/point/particle2

execute if score hunter_stronghold_occupy_value system matches 400.. run function sh2:process_control/battle/sec1/end