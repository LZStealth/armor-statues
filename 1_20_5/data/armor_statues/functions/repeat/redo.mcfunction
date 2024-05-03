#
# Description:	Undo last armor stand action
# Called by:	as_statue:repeat/undo_redo
# Entity @s:	player
#
# Copies current state to undo states
#
function armor_statues:repeat/save_undo_state
#
# Copies last redo state to armor stand
#
data modify entity @e[type=minecraft:armor_stand,sort=nearest,limit=1] {} merge from storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.RedoStates[0]
data modify entity @e[type=minecraft:armor_stand,sort=nearest,limit=1] Pose set from storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.RedoStates[0].Pose
#
# Deletes redo state
#
data remove storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.RedoStates[0]
#
# Modifies book data
#
execute as @s run function armor_statues:storage_out