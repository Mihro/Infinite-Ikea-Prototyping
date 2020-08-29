# Set status to constructing
setblock ~1 ~ ~ orange_concrete

# Set self up for creation
function ikea:tile_creation/initialize_tile
# Success check
execute if block ~1 ~ ~ orange_concrete if entity @e[tag=tile_root,distance=..1] run setblock ~1 ~ ~ magenta_concrete

# Choose a structure and copy details to self
execute as @e[tag=tile_root,distance=..1] run function ikea:tile_creation/choose_structure
execute as @e[tag=tile_root,distance=..1] run function ikea:tile_creation/print_data
# Success check
execute unless block ~ ~ ~ command_block{Command:""} if entity @e[tag=tile_root,distance=..1,scores={TileType=1..,TilePool=1..,TileEntry=1..}] run setblock ~1 ~ ~ light_blue_concrete

# Run structure-specific function chain
data merge block ~ ~ ~ {auto:1b}