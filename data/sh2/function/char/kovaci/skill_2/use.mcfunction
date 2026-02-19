advancement revoke @s only sh2:use_event/skill/kovaci/skill2
scoreboard players remove @s kovaci.mine_store 1
scoreboard players set @s kovaci.cd2 20
scoreboard players remove @s ENERGY 8

execute summon block_display run function sh2:char/kovaci/skill_2/mine/spawn_settings
