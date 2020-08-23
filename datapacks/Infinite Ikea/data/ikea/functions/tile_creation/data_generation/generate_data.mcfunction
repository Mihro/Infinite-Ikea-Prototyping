tellraw @a "\n=== Generating Tile Data ==="
setblock ~ ~ ~ minecraft:stone
setblock ~1 ~ ~ minecraft:orange_concrete

function ikea:tile_creation/data_generation/choose_rotation
function ikea:tile_creation/data_generation/tile_type/choose_type

function ikea:tile_creation/data_generation/print_data

#kill @e[tag=!tile_origin,distance=..1]