execute if block ~ ~ ~ #ikea:is_tile run fill ~-1 ~2 ~-1 ~4 ~3 ~4 air replace #ikea:concrete
execute if block ~ ~ ~ #ikea:is_tile run fill ~-1 ~2 ~-1 ~4 ~3 ~4 air replace smooth_stone
execute if block ~ ~ ~ #ikea:is_tile run fill ~ ~ ~ ~4 ~ ~ air

execute positioned ~5 ~ ~ if block ~ ~ ~ #ikea:is_tile run function ikea:cleanup/recursive_remove_tile
execute positioned ~-5 ~ ~ if block ~ ~ ~ #ikea:is_tile run function ikea:cleanup/recursive_remove_tile
execute positioned ~ ~ ~5 if block ~ ~ ~ #ikea:is_tile run function ikea:cleanup/recursive_remove_tile
execute positioned ~ ~ ~-5 if block ~ ~ ~ #ikea:is_tile run function ikea:cleanup/recursive_remove_tile