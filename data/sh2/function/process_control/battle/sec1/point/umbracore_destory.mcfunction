scoreboard players set point_status system 3
scoreboard players set shadow_front_umbracore_destory_value system -1
tellraw @a [{"text":"§c>>前线影庭被摧毁"}]
bossbar set shadow_display name [{"text":"§d前线影庭§c被摧毁! §f据点处于中立状态"}]