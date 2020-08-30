# Place loot item into chest (structure data in item NBT)
setblock ~ ~ ~1 chest[facing=west]
loot replace block ~ ~ ~1 container.0 loot ikea:tile_type/choose_type

# Copy command from loot item NBT
setblock ~ ~ ~ command_block[facing=up]{auto:0b}
data modify block ~ ~ ~ Command set from block ~ ~ ~1 Items[0].tag.ikea.cmd

# Physically display type
execute if data block ~ ~ ~1 {Items:[{tag:{ikea:{type:1}}}]} run setblock ~1 ~ ~1 white_concrete
execute if data block ~ ~ ~1 {Items:[{tag:{ikea:{type:2}}}]} run setblock ~1 ~ ~1 orange_concrete
execute if data block ~ ~ ~1 {Items:[{tag:{ikea:{type:3}}}]} run setblock ~1 ~ ~1 magenta_concrete
execute if data block ~ ~ ~1 {Items:[{tag:{ikea:{type:4}}}]} run setblock ~1 ~ ~1 light_blue_concrete
