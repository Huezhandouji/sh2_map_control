#为角色运行指令
execute as @a[scores={character=101}] at @s run function sh2:char/hezi/run



#character = 1 to 100 shadow
#character = 101 to ... hunter

#character = 101 meiqi_hezi
execute as @a[scores={apply_character=101}] at @s run function sh2:char/hezi/initialize
execute as @a[scores={apply_character=-1,character=101}] run function sh2:char/hezi/discharge