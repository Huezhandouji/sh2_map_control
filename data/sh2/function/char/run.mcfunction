#为角色运行指令
execute as @a[scores={character=101}] at @s run function sh2:char/hezi/run
execute as @a[scores={character=102}] at @s run function sh2:char/kovaci/run


#/character = 1 to 100 shadow
#/character = 101 to ... hunter

#/character = 101 meiqi_hezi
execute as @a[scores={apply_character=101}] at @s run function sh2:char/hezi/apply
#/ = 102 kovaci
execute as @a[scores={apply_character=102}] at @s run function sh2:char/kovaci/apply
#/apply_character = -1 撤销角色
execute as @a[scores={apply_character=-1,character=101}] run function sh2:char/hezi/discharge
execute as @a[scores={apply_character=-1,character=102}] run function sh2:char/kovaci/discharge
#/apply_character=0,空闲

#特殊值系统
execute as @a[scores={character=1..}] run function sh2:char/special_values/san/run
execute as @a[scores={character=1..},team=hunter] run function sh2:char/special_values/energy/run