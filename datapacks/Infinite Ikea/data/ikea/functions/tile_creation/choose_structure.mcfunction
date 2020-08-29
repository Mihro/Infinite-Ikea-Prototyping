setblock ~ ~ ~ command_block[facing=up]
setblock ~ ~ ~1 chest[facing=west]

# Place item with relevant data, from loot table, into the chest
loot replace block ~ ~ ~1 container.0 loot ikea:tile_type/choose_type

# Copy data to tile self
execute store result score @s TileType run data get block ~ ~ ~1 Items[0].tag.ikea.type
execute store result score @s TilePool run data get block ~ ~ ~1 Items[0].tag.ikea.pool
execute store result score @s TileEntry run data get block ~ ~ ~1 Items[0].tag.ikea.entry
data modify block ~ ~ ~ Command set from block ~ ~ ~1 Items[0].tag.ikea.cmd

# Physically display type
execute if score @s TileType matches 1 run setblock ~1 ~ ~1 white_concrete
execute if score @s TileType matches 2 run setblock ~1 ~ ~1 orange_concrete