#建立地基后，设置据点状态标识，设置bossbar
scoreboard players set point_status system 4
tellraw @a [{"text":"§e>>猎影人建立了前线据点的地基。现在影无法重建前线影庭了"}]
bossbar set shadow_display max 100
bossbar set shadow_display color yellow

data modify entity @e[type=text_display,tag=sec2_shadow,tag=3,limit=1] text set value [{"text":"§c防守据点"}]
data modify entity @e[type=text_display,tag=sec2_shadow,tag=3_,limit=1] text set value [{"text":"§c地方地基已建立"}]

#放置结构3
particle minecraft:explosion_emitter -462 8 -45 8 8 8 1 60 force
place template minecraft:sec3_3 -473 -2 -54 none none 1 0 strict
kill @e[type=item]