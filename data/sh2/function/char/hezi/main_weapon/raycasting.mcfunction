#这是普通普攻，因为普通普攻只能命中一个敌人，而我还要给这个敌人造成伤害，因此使用递归函数检测打没达到人
#当前位置，检测有没有敌人，有就让这个敌人执行一个函数
execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0,dy=0,dz=0,tag=!hezi] at @s run function sh2:char/hezi/main_weapon/weak_attack_victim
#当前位置有敌人了，因为不能让我们一穿三，所以执行return，也就是返回指令，意思是结束这个函数,要不然镰刀成枪了
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0,dy=0,dz=0,tag=!hezi] run return 1
#如果函数没有结束，意味着这个位置没有敌人，在当前执行位置的前面0.1格再次执行这个函数，最多执行到离自己10格远，防止卡死
execute positioned ^ ^ ^0.1 if entity @s[distance=..10] run function sh2:char/hezi/main_weapon/raycasting