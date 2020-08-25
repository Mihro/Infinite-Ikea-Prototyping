# Clear activated tile
execute if block ~ ~ ~ structure_block run function ikea:cleanup/clear_activated_tile

# Clear unactivated tile
#execute if block ~1 ~ ~ white_concrete run function ikea:cleanup/clear_unactivated_tile
execute if block ~ ~ ~ #ikea:is_tile run function ikea:cleanup/clear_unactivated_tile

# [ Affected by - Tile Size ]
execute positioned ~7 ~ ~ if block ~ ~ ~ #ikea:is_tile run function ikea:cleanup/recursive_remove_tile
execute positioned ~-7 ~ ~ if block ~ ~ ~ #ikea:is_tile run function ikea:cleanup/recursive_remove_tile
execute positioned ~ ~ ~7 if block ~ ~ ~ #ikea:is_tile run function ikea:cleanup/recursive_remove_tile
execute positioned ~ ~ ~-7 if block ~ ~ ~ #ikea:is_tile run function ikea:cleanup/recursive_remove_tile