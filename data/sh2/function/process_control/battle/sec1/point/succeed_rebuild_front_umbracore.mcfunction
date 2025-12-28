scoreboard players set point_status system 1
scoreboard players remove shadow_main_umbracore_destory_value system 50
tellraw @a [{"text":"§d>>影成功地重建了前线影庭,§e耗费了50主庭血量"}]
tellraw @a [{"text":"§d>>影主庭血量还剩余: "},{"score":{"name":"shadow_main_umbracore_destory_value","objective":"system"}},{"text":" / 500"}]
bossbar set shadow_display max 200
bossbar set shadow_display color purple
scoreboard players set shadow_front_umbracore_destory_value system 100