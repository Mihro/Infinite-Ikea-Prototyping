# Returns TileType = 1 if 2x2 tile won't fit
function ikea:tile_creation/data_generation/tile_type/type_2x2/find_placements

# If 2x2 tile won't fit then generate 1x1 tile:
execute if score @s TileType matches 1 run function ikea:tile_creation/data_generation/tile_type/type_1x1/generate_1x1_data
# If 2x2 tile will fit then choose structure
execute if score @s TileType matches 2 run function ikea:tile_creation/data_generation/tile_type/type_2x2/pools/choose_pool