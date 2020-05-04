tellraw @a "\n=== Creating Tile ==="
setblock ~ ~ ~ structure_block{mode:"LOAD",posY:2}

function ikea:tile_create/set_tile_type

function ikea:tile_create/set_tile_structure/pool_from_type

#Set tile gap floor material
fill ~-1 ~2 ~-1 ~4 ~2 ~4 smooth_stone replace air

function ikea:tile_create/set_tile_walls

# Debug print tile data
function ikea:tile_create/print_tile_data

### Place current tile
#function ikea:tile_create/translate_data_to_tile

### Prepare next tile
#function ikea:adjacent_tiles/prepare_adjacent_tiles

kill @s[type=!player]