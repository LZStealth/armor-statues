#
# Description:	Copies player book from mainhand or offhand into storage
# Called by:	as_statue:trigger\copy as_statue:trigger\paste
# Entity @s:	player
#
# Temp storage to copy
#
execute if entity @s[\
    nbt={\
        SelectedItem:{\
            id:"minecraft:written_book", \
            components:{\
                "minecraft:custom_data":{\
                    datapack:"ArmorStatuesV2"\
                }\
            }\
        }\
    }\
] \
    run data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data set from entity @s SelectedItem.components.minecraft:custom_data
execute if entity @s[\
    nbt={\
        Inventory:[\
            {\
                id:"minecraft:written_book", \
                Slot:-106b, \
                components:{\
                    "minecraft:custom_data": {\
                        datapack:"ArmorStatuesV2" \
                    }\
                }\
            }\
        ]\
    }\
] \
    unless entity @s[\
    nbt={\
        SelectedItem:{\
            id:"minecraft:written_book", \
            components:{\
                "minecraft:custom_data":{\
                    datapack:"ArmorStatuesV2"\
                }\
            }\
        }\
    } \
] \
    run data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data set from entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data