setblock ~1 ~ ~ orange_concrete
function ikea:tile_creation/initialize_tile

setblock ~1 ~ ~ magenta_concrete
execute as @e[tag=tile_root,distance=..1] run function ikea:tile_creation/generate_data