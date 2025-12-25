advancement revoke @s only sh2:use_event/deploy/hunter_char_select
execute if score @s page_menu_select_char matches 1 run function sh2:process_control/battle/char_select/hunter/interface_char
execute if score @s page_menu_select_char matches 2 run function sh2:process_control/battle/char_select/hunter/interface_ex