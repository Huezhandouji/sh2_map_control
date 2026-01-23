scoreboard players operation a calculate = hunter_stronghold_occupy_value system
scoreboard players set num calculate 4
scoreboard players operation a calculate /= num calculate

data modify entity @e[limit=1,tag=6_,tag=sec5_shadow,type=text_display] text set value [{"text":"§d主影庭\n§c已被摧毁\n§e敌方占领值 "},{"score":{"name":"a","objective":"calculate"}},{"text":"/500"}]
data modify entity @e[limit=1,tag=6_,tag=sec5_hunter,type=text_display] text set value [{"text":"§d主影庭\n§a已被摧毁\n§e友方占领值 "},{"score":{"name":"a","objective":"calculate"}},{"text":"/500"}]
execute store result bossbar shadow_display value run scoreboard players get a calculate
bossbar set shadow_display name [{"text":"§d最终目标-主影庭残骸 §8// §e占领值 "},{"score":{"name":"a","objective":"calculate"}},{"text":"/500"}]

scoreboard players reset a calculate
scoreboard players reset num calculate

scoreboard players set in_point_shadow_population system 0
scoreboard players set in_point_hunter_population system 0
execute positioned -291.5 6 -110.5 as @a[distance=..10,team=shadow] run scoreboard players add in_point_shadow_population system 1
execute positioned -291.5 6 -110.5 as @a[distance=..10,team=hunter] run scoreboard players add in_point_hunter_population system 1
execute positioned -291.5 6 -110.5 as @a[distance=..10,team=hunter] run scoreboard players add hunter_stronghold_occupy_value system 1
execute if score hunter_stronghold_occupy_value system matches 1.. positioned -291.5 6 -110.5 as @a[distance=..10,team=shadow] run scoreboard players remove hunter_stronghold_occupy_value system 1