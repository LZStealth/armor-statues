# 
# Description:	trigger for crafting adjustment wand
# Called by:	armor_statues:second
# Entity @s:	player
#
# Checks if wands are disabled
#
execute if score #wands_disabled as_angle matches 1 run function armor_statues:player_message {\
    message: '{\
        "text":"Wands must be enabled",\
        "color":"dark_red"\
    }'\
}
execute if score #wands_disabled as_angle matches 1 run scoreboard players set @s adjustment_wand 0
execute if score #wands_disabled as_angle matches 1 run return fail
# Checks if player already has a wand
execute if items entity @s container.* minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{wand:1b}] run title @s actionbar [{"text":"You already have an Adjustment Wand!","color": "red"}]
execute if items entity @s container.* minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{wand:1b}] run scoreboard players set @s adjustment_wand 0
# Checks if player has an item for wand
execute unless items entity @s[scores={adjustment_wand=1..}] container.* minecraft:warped_fungus_on_a_stick run title @s actionbar [{"text":"Must have a ","color":"red"},{"translate":"item.minecraft.warped_fungus_on_a_stick","color":"yellow"},{"color":"red","text":" in Inventory"}]
execute unless items entity @s[scores={adjustment_wand=1..}] container.* minecraft:warped_fungus_on_a_stick run scoreboard players set @s adjustment_wand 0
#
clear @s[scores={adjustment_wand=1..}] minecraft:warped_fungus_on_a_stick 1
loot give @s[scores={adjustment_wand=1..}] loot armor_statues:adjustment_wand
# reset trigger
scoreboard players set @s adjustment_wand 0
scoreboard players enable @s adjustment_wand