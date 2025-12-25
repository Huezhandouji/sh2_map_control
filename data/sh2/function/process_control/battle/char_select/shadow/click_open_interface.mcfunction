advancement revoke @s only sh2:use_event/deploy/shadow_char_select
execute if score @s page_menu_select_char matches 1 run function sh2:process_control/battle/char_select/shadow/interface_char
execute if score @s page_menu_select_char matches 2 run function sh2:process_control/battle/char_select/shadow/interface_ex