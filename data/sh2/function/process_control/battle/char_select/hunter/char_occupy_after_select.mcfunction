tag @s add self
execute unless score @a[tag=!self,limit=1] char_selected = @s trigger_hunter_select_char run return run tag @s remove self
tag @s remove self
return fail