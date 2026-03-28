execute if score @s kovaci.ammo matches 0 run return run item modify entity @s hotbar.0 {"function":"set_components","components":{"item_name":[{"text":"§a突击步枪 §c无弹药 按下Q换弹"}]}}
execute store result storage sh2:character kovaci.item0_name int 1 run scoreboard players get @s kovaci.ammo
function sh2:char/kovaci/main_weapon/item/change_available_name with storage sh2:character kovaci