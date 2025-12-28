scoreboard players set point_status system 2
scoreboard players remove shadow_main_umbracore_destory_value system 35
tellraw @a [{"text":"§d>>影升级了前线影庭,§e耗费了35主庭血量"}]
tellraw @a [{"text":"§d>>影主庭血量还剩余: "},{"score":{"name":"shadow_main_umbracore_destory_value","objective":"system"}},{"text":" / 500"}]
bossbar set shadow_display max 200
bossbar set shadow_display color purple
scoreboard players add shadow_front_umbracore_destory_value system 100