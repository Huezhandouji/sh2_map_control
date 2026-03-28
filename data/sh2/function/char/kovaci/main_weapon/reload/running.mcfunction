execute if score @s kovaci.reload_cd matches 100 run playsound ui.button.click
execute if score @s kovaci.reload_cd matches 98 run playsound block.piston.extend
execute if score @s kovaci.reload_cd matches 80 run playsound block.piston.extend
execute if score @s kovaci.reload_cd matches 60 run playsound block.piston.extend
execute if score @s kovaci.reload_cd matches 40 run playsound block.piston.extend
execute if score @s kovaci.reload_cd matches 20 run playsound block.piston.extend
execute if score @s kovaci.reload_cd matches 5 run playsound block.piston.contract
execute if score @s kovaci.reload_cd matches 0 run playsound entity.blaze.hurt
execute if score @s kovaci.reload_cd matches 0 run scoreboard players set @s kovaci.ammo 30
scoreboard players remove @s kovaci.reload_cd 1