#
# Description:	Undo last armor stand action
# Called by:	as_statue:repeat/undo_redo
# Entity @s:	player
#
# Copies current state to redo states
#
function armor_statues:repeat/save_redo_state
#
# Copies last undo state to armor stand
#
data modify entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_selected] {} merge from storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.UndoStates[0]
data modify entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=as_selected] Pose set from storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.UndoStates[0].Pose
#
# Deletes undo state state
#
data remove storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.UndoStates[0]
#
# Modifies book data
#
execute as @s run function armor_statues:storage_out