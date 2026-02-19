execute if block ~ ~-0.1 ~ #sh2:passable run tp @s ~ ~-0.1 ~
tp @e[tag=kovaci_mine1,type=block_display,sort=nearest,limit=1] ~ ~0.2 ~

execute if entity @e[team=shadow,distance=..2] run function sh2:char/kovaci/skill_2/mine/explode

#回收面板
execute if entity @a[tag=kovaci,distance=..5] unless block ~ ~-0.1 ~ #sh2:passable positioned ~ ~1 ~ unless entity @e[type=text_display,distance=..0.1,sort=nearest,limit=1,tag=kovaci_mine_penal] run \
    execute summon text_display run function sh2:char/kovaci/skill_2/mine/panel_spawn_settings
execute unless entity @a[tag=kovaci,distance=..5] positioned ~ ~1 ~ if entity @e[type=text_display,distance=..0.1,sort=nearest,limit=1,tag=kovaci_mine_penal] run \
function sh2:char/kovaci/skill_2/mine/kill_panel
scoreboard players add @s kovaci.mine_exist_time 1
execute if score @s kovaci.mine_exist_time matches 2400.. run function sh2:char/hezi/discharge