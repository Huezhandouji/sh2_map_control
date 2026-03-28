#影庭被摧毁，设置状态标识
scoreboard players set point_status system 3
scoreboard players set shadow_front_umbracore_destory_value system -1
tellraw @a [{"text":"§c>>前线影庭被摧毁"}]
bossbar set shadow_display name [{"text":"§d前线影庭§c被摧毁! §f据点处于中立状态"}]

#放置结构2
particle minecraft:explosion_emitter -462 8 -45 8 8 8 1 60 force
place template sh2:sec3_2 -473 -2 -54 none none 1 0 strict
kill @e[type=item]