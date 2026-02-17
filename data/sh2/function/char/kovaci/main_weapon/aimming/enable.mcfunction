attribute @s movement_speed modifier add minus_movement_speed -0.05 add_value
item modify entity @s hotbar.0 {"function":"set_components","components":{"equippable":{"camera_overlay":"sh2:visual_cover/gun_sight","slot":"mainhand"}}}
playsound entity.ender_dragon.flap master @a ~ ~ ~ 0.5