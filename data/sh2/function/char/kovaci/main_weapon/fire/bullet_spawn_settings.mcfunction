data modify entity @s Tags set value ["kovaci_bullet"]
data modify entity @s block_state set value {"Name":"black_concrete"}
data modify entity @s transformation.scale set value [0.02,0.02,0.02]
rotate @s facing entity @a[tag=kovaci,limit=1] eyes