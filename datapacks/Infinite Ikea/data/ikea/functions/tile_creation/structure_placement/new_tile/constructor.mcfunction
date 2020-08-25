# Origin
execute if block ~1 ~ ~ #ikea:uninitialized_state_block run setblock ~ ~ ~ command_block[facing=up]{Command:"function ikea:tile_creation/initialize_tile"}

# Trigger
execute if block ~1 ~ ~ #ikea:uninitialized_state_block run setblock ~ ~1 ~ diamond_block

# Tile state (Uninitialized)
execute if block ~1 ~ ~ #ikea:uninitialized_state_block run setblock ~1 ~ ~ white_concrete