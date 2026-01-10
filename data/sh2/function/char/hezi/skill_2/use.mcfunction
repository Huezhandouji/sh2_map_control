#这是使用了技能执行的函数
#先撤销这个进度，让技能可以重复释放
advancement revoke @s only sh2:use_event/skill/hezi/2
#因为这个技能时位移4次，每次间隔0.1秒左右，所以使用一个递减的分数，当分数到9，6，3，0的时候就执行一次位移
#去看action函数
scoreboard players set @s hezi.process.cd2 9
#设置cd和减少能量
scoreboard players set @s hezi.cd2 160
scoreboard players remove @s ENERGY 15
#把上次技能用来标记到打过的敌人的标签清除掉
tag @a remove hezi_skill2_hited