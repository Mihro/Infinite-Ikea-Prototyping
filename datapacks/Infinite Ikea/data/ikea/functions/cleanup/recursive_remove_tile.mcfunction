# [ Affected by - Tile Size ]
execute if block ~ ~ ~ structure_block run fill ~ ~3 ~ ~7 ~10 ~7 air replace #ikea:cleanup_tiles
fill ~ ~ ~ ~4 ~ ~ air replace #ikea:concrete
fill ~ ~1 ~ ~ ~1 ~ air replace diamond_block
fill ~ ~1 ~ ~ ~1 ~ air replace stone
fill ~ ~1 ~ ~ ~1 ~ air replace redstone_block
fill ~ ~ ~ ~ ~ ~ air replace structure_block[mode=load]

# [ Affected by - Tile Size ]
# [ Coord = (Tile Size) ]
execute positioned ~7 ~ ~ if block ~ ~ ~ #ikea:is_tile run function ikea:cleanup/recursive_remove_tile
execute positioned ~-7 ~ ~ if block ~ ~ ~ #ikea:is_tile run function ikea:cleanup/recursive_remove_tile
execute positioned ~ ~ ~7 if block ~ ~ ~ #ikea:is_tile run function ikea:cleanup/recursive_remove_tile
execute positioned ~ ~ ~-7 if block ~ ~ ~ #ikea:is_tile run function ikea:cleanup/recursive_remove_tile