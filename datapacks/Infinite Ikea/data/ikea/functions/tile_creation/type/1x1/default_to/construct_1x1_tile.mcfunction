### Function start for if a larger tile can't fit and defaults to fitting a 1x1 tile instead

# Set status to constructing
setblock ~1 ~ ~ orange_concrete

# Clear root & trigger blocks
execute if block ~1 ~ ~ orange_concrete run fill ~ ~ ~ ~ ~1 ~ stone
# Clear tile data blocks
execute if block ~1 ~ ~ orange_concrete run fill ~ ~ ~1 ~1 ~ ~1 air

# Choose a structure as a loot table item (structure data in NBT)
execute if block ~1 ~ ~ orange_concrete run function ikea:tile_creation/type/1x1/default_to/choose_1x1_tile
# Success check
execute unless block ~ ~ ~ command_block{Command:""} unless block ~1 ~ ~1 air run setblock ~1 ~ ~ magenta_concrete

# Run structure-specific function chain
execute if block ~1 ~ ~ magenta_concrete run setblock ~ ~1 ~ redstone_block
setblock ~ ~1 ~ air
