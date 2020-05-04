#execute positioned ~ ~1 ~ run function ikea:adjacent_rooms/check_adjacent_constructors

#execute if entity @s[tag=has_wall] run function ikea:adjacent_rooms/place_walls

# [Affected by - Tile Size]
# [Coord=+-(Tile Size)]
execute if entity @s[tag=!wall_north] positioned ~ ~ ~-6 if block ~ ~ ~ air run function ikea:adjacent_tiles/place_adjacent
execute if entity @s[tag=!wall_south] positioned ~ ~ ~6 if block ~ ~ ~ air run function ikea:adjacent_tiles/place_adjacent
execute if entity @s[tag=!wall_east] positioned ~6 ~ ~ if block ~ ~ ~ air run function ikea:adjacent_tiles/place_adjacent
execute if entity @s[tag=!wall_west] positioned ~-6 ~ ~ if block ~ ~ ~ air run function ikea:adjacent_tiles/place_adjacent