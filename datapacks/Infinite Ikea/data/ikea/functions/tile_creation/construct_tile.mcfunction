# If tile is untriggered, set status to constructing
execute if block ~1 ~ ~ #ikea:untriggered_state run setblock ~1 ~ ~ orange_concrete

# Clear root & trigger blocks
execute if block ~1 ~ ~ orange_concrete run fill ~ ~ ~ ~ ~1 ~ stone

# Choose a structure as a loot table item (structure data in NBT)
execute if block ~1 ~ ~ orange_concrete run function ikea:tile_creation/choose_tile
# Success check
execute unless block ~ ~ ~ command_block{Command:""} unless block ~1 ~ ~1 air run setblock ~1 ~ ~ magenta_concrete

# Run structure-specific function chain
execute if block ~1 ~ ~ magenta_concrete run setblock ~ ~1 ~ redstone_block
setblock ~ ~1 ~ air
