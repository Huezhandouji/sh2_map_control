#沉默效果和眩晕效果的技能和普攻禁用在每一个角色中实现

execute as @a[scores={silence_time=0..}] run function sh2:special_effects/silence
execute as @a[scores={immobilize_time=0..}] run function sh2:special_effects/immobilize
execute as @a[scores={faint_time=0..}] run function sh2:special_effects/faint