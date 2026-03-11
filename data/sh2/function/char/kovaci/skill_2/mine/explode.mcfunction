execute as @e[team=shadow,distance=..5] run damage @s 20 sh2:normal_knockback by @a[tag=kovaci,limit=1]
scoreboard players set @e[team=shadow,distance=..5,scores={faint_time=..40}] faint_time 40
particle explosion ~ ~ ~ 2 2 2 1 10 force
particle dust{"color":2829099,scale:2} ~ ~ ~ 3 3 3 1 30 force
playsound entity.generic.explode master @a ~ ~ ~ 5 1
kill @e[tag=kovaci_mine1,type=block_display,sort=nearest]
kill @s