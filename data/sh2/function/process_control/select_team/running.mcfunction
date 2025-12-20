#计算队伍人数
scoreboard players set shadow_population system 0
scoreboard players set hunter_population system 0
scoreboard players set spectator_population system 0
execute as @a[team=shadow] run scoreboard players add shadow_population system 1
execute as @a[team=hunter] run scoreboard players add hunter_population system 1
execute as @a[team=spectator] run scoreboard players add spectator_population system 1

scoreboard players set shadow_ready_population system 0
execute as @a[scores={ready=1},team=shadow] run scoreboard players add shadow_ready_population system 1
scoreboard players set hunter_ready_population system 0
execute as @a[scores={ready=1},team=hunter] run scoreboard players add hunter_ready_population system 1
scoreboard players set ready_population system 0
execute as @a[scores={ready=1}] run scoreboard players add ready_population system 1

scoreboard players set total_population system 0
execute as @a run scoreboard players add total_population system 1
scoreboard players set total_take_part_population system 0
execute as @a[team=!spectator] run scoreboard players add total_take_part_population system 1
#更改展示实体数据
data modify entity @e[tag=team_display,limit=1] text set value [{"text":"队伍玩家列表\n","color":"yellow"},{"text":"影 >> ","color":"dark_purple"},{"score":{"name":"shadow_population","objective":"system"}},{"text":"人\n"},{"selector":"@a[team=shadow]","color":"white"},{"text":"\n====================\n","color":"gray"},{"text":"猎影人 >> ","color":"yellow"},{"score":{"name":"hunter_population","objective":"system"}},{"text":"人\n"},{"selector":"@a[team=hunter]","color":"white"}]

#第0个物品，打开对话框选队
execute as @a unless items entity @s hotbar.0 book run clear @s book[item_model="writable_book"]
execute as @a unless items entity @s hotbar.0 book at @s run kill @e[type=item,nbt={"Item":{"id":"minecraft:book"}},distance=..5]
execute as @a unless items entity @s hotbar.0 book run item replace entity @s hotbar.0 with book[item_model="writable_book",item_name=[{"text":"选择阵营!","color":"yellow"}],consumable={"animation":"none",consume_seconds:0,has_consume_particles:false,sound:{"sound_id":""}},custom_data={"use_event":{"team_select0":true}}]

team join shadow @a[scores={team_select_trigger=1}]
team join hunter @a[scores={team_select_trigger=2}]
team join spectator @a[scores={team_select_trigger=0}]
tellraw @a[scores={team_select_trigger=1}] [{"text":"§7>>你加入了 §d影 §7阵营"}]
tellraw @a[scores={team_select_trigger=2}] [{"text":"§7>>你加入了 §e猎影人 §7阵营"}]
tellraw @a[scores={team_select_trigger=0}] [{"text":"§7>>你成为了一名 旁观者"}]
scoreboard players set @a[scores={team_select_trigger=0..}] team_select_trigger -1

#第1个物品，右键准备
execute as @a[team=!spectator] unless items entity @s hotbar.1 stick run clear @s stick[item_model="iron_sword"]
execute as @a[team=!spectator] unless items entity @s hotbar.1 stick at @s run kill @e[type=item,nbt={"Item":{"id":"minecraft:stick"}},distance=..5]
execute as @a[team=!spectator] unless items entity @s hotbar.1 stick run item replace entity @s hotbar.1 with stick[item_model="iron_sword",item_name=[{"text":"准备!","color":"light_purple"}],consumable={"animation":"none",consume_seconds:0,has_consume_particles:false,sound:{"sound_id":""}},custom_data={"use_event":{"team_select1":true}}]
execute as @a[team=spectator] if items entity @s hotbar.1 stick run clear @s stick[item_model="iron_sword"]
scoreboard players set @a[team=spectator] ready 0

execute as @a[scores={ready=1}] run item modify entity @s hotbar.1 {"function":"set_components","components":{"enchantments":{"unbreaking":1},"item_name":[{"text":"[已准备]取消准备","color":"red"}]}}
execute as @a[scores={ready=0}] run item modify entity @s hotbar.1 {"function":"set_components","components":{"enchantments":{},"item_name":[{"text":"[未准备]准备!","color":"green"}]}}

#actionbar显示的队伍人数信息
execute as @a run function sh2:process_control/select_team/actionbar_ui/prepare

#当玩家都准备就绪后开启倒计时
execute if score ready_population system = total_take_part_population system if score hunter_population system matches 1.. if score shadow_population system matches 1.. if score game_start_countdown_started system matches 0 run function sh2:process_control/select_team/start_countdown/set_scores
execute if score game_start_countdown_started system matches 1 run function sh2:process_control/select_team/start_countdown/countdown
execute if score game_start_countdown system matches 0 run function sh2:process_control/select_team/end