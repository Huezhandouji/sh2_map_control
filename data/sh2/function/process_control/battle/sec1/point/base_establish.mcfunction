#建立地基后，设置据点状态标识，设置bossbar
scoreboard players set point_status system 4
tellraw @a [{"text":"§e>>猎影人建立了前线据点的地基。现在影无法重建前线影庭了"}]
bossbar set shadow_display max 100
bossbar set shadow_display color yellow

data modify entity @e[type=text_display,tag=sec1_shadow,tag=2,limit=1] text set value [{"text":"§c防守据点"}]
data modify entity @e[type=text_display,tag=sec1_shadow,tag=2_,limit=1] text set value [{"text":"§c地方地基已建立"}]

#放置结构3
place template sh2:sec1_3 -252 -4 65 none none 1 0 strict
particle minecraft:explosion_emitter -243 8 74 8 8 8 1 60 force
kill @e[type=item]