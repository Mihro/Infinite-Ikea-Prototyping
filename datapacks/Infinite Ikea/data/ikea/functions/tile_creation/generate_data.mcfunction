setblock ~ ~ ~1 chest[facing=west]
loot replace block ~ ~ ~1 container.0 loot ikea:tile_type/choose_type

setblock ~1 ~ ~1 command_block[facing=up]
data modify block ~1 ~ ~1 Command set from block ~ ~ ~1 Items[0].tag.ikea.cmd
data merge block ~1 ~ ~1 {auto:1b}