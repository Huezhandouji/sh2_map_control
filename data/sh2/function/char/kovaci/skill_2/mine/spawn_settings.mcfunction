data modify entity @s block_state set value {"Name":"black_concrete"}
data modify entity @s transformation.scale set value [0.5,0.2,0.5]
data modify entity @s transformation.translation set value [-0.25,-0.05,-0.25]
tag @s add kovaci_mine
execute positioned ~ ~0.2 ~ summon block_display run function sh2:char/kovaci/skill_2/mine/spawn_settings2