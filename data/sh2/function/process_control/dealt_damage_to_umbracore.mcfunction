$summon marker $(x) $(y) $(z) {"Tags":["umbracore_demage_location_check"]}
$execute if score game_process system matches 2 if score point_status system matches 1..2 if score battle_phase system matches 1 \
positioned -243.5 6 73.5 if entity @e[tag=umbracore_demage_location_check,type=marker,distance=..$(distance)] run \
scoreboard players remove shadow_front_umbracore_destory_value system $(damage)
$execute if score game_process system matches 2 if score point_status system matches 1..2 if score battle_phase system matches 2 \
positioned -199.5 10 -38.5 if entity @e[tag=umbracore_demage_location_check,type=marker,distance=..$(distance)] run \
scoreboard players remove shadow_front_umbracore_destory_value system $(damage)
$execute if score game_process system matches 2 if score point_status system matches 1..2 if score battle_phase system matches 3 \
positioned -461.5 6 -47.5 if entity @e[tag=umbracore_demage_location_check,type=marker,distance=..$(distance)] run \
scoreboard players remove shadow_front_umbracore_destory_value system $(damage)
$execute if score game_process system matches 2 if score point_status system matches 1..2 if score battle_phase system matches 4 \
positioned -475.5 33 -129.5 if entity @e[tag=umbracore_demage_location_check,type=marker,distance=..$(distance)] run \
scoreboard players remove shadow_front_umbracore_destory_value system $(damage)
$execute if score game_process system matches 2 if score point_status system matches 1..2 if score battle_phase system matches 5 \
positioned -276.5 57 -149.5 if entity @e[tag=umbracore_demage_location_check,type=marker,distance=..$(distance)] run \
scoreboard players remove shadow_main_umbracore_destory_value system $(damage)
kill @e[type=marker,tag=umbracore_demage_location_check]

