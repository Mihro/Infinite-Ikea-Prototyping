# Set self up for creation
setblock ~1 ~ ~ orange_concrete
function ikea:tile_creation/initialize_tile

# Choose a structure and copy details to self
setblock ~1 ~ ~ magenta_concrete
execute as @e[tag=tile_root,distance=..1] run function ikea:tile_creation/choose_structure
execute as @e[tag=tile_root,distance=..1] run function ikea:tile_creation/print_data

# Run structure-specific function chain
setblock ~1 ~ ~ light_blue_concrete
data merge block ~ ~ ~ {auto:1b}