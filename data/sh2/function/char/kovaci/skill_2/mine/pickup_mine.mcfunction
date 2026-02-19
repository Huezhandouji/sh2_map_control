execute positioned ~ ~-1 ~ as @e[tag=kovaci_mine,sort=nearest,limit=1] at @s run function sh2:char/kovaci/skill_2/mine/kill_panel
scoreboard players add @a[tag=kovaci,scores={kovaci.mine_store=..1}] kovaci.mine_store 1
execute positioned ~ ~-1 ~ as @e[tag=kovaci_mine,sort=nearest,limit=1] at @s run function sh2:char/kovaci/skill_2/mine/discharge