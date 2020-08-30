# Place loot item into chest (structure data in item NBT)
setblock ~ ~ ~1 chest[facing=west]
loot replace block ~ ~ ~1 container.0 loot ikea:tile_type/1x1/pools/choose_pool

# Copy command from loot item NBT
setblock ~ ~ ~ command_block[facing=up]{auto:0b}
data modify block ~ ~ ~ Command set from block ~ ~ ~1 Items[0].tag.ikea.cmd

# Physically display type
execute if data block ~ ~ ~1 {Items:[{tag:{ikea:{type:1}}}]} run setblock ~1 ~ ~1 white_concrete
