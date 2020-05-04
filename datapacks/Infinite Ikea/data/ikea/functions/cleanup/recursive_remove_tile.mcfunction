# [ Affected by - Tile Size ]
# [ Negative Corner = -(Walkway Width) ]
# [ Positive Corner = (Tile Size-Walkway Width)-1 ]
execute if block ~ ~ ~ structure_block[mode=load] run fill ~-2 ~2 ~-2 ~5 ~3 ~5 air replace #ikea:concrete
execute if block ~ ~ ~ structure_block[mode=load] run fill ~-2 ~2 ~-2 ~5 ~3 ~5 air replace smooth_stone
execute if block ~ ~ ~ #ikea:is_tile run fill ~ ~ ~ ~4 ~ ~ air replace #ikea:concrete
execute if block ~ ~ ~ #ikea:is_tile run fill ~ ~ ~ ~4 ~ ~ air replace diamond_block
execute if block ~ ~ ~ #ikea:is_tile run fill ~ ~ ~ ~4 ~ ~ air replace stone
execute if block ~ ~ ~ #ikea:is_tile run setblock ~ ~ ~ air

# [ Affected by - Tile Size ]
# [ Coord = (Tile Size)-2 ]
execute positioned ~6 ~ ~ if block ~ ~ ~ #ikea:is_tile run function ikea:cleanup/recursive_remove_tile
execute positioned ~-6 ~ ~ if block ~ ~ ~ #ikea:is_tile run function ikea:cleanup/recursive_remove_tile
execute positioned ~ ~ ~6 if block ~ ~ ~ #ikea:is_tile run function ikea:cleanup/recursive_remove_tile
execute positioned ~ ~ ~-6 if block ~ ~ ~ #ikea:is_tile run function ikea:cleanup/recursive_remove_tile