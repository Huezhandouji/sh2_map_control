scoreboard players set point_status system 4
tellraw @a [{"text":"§e>>猎影人建立了前线据点的地基。现在影无法重建前线影庭了"}]
bossbar set shadow_display max 100
bossbar set shadow_display color yellow

data modify entity @e[type=text_display,tag=sec1_shadow,tag=2,limit=1] text set value [{"text":"§c防守据点"}]
data modify entity @e[type=text_display,tag=sec1_shadow,tag=2_,limit=1] text set value [{"text":"§c地方地基已建立"}]
