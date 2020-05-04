# [Affected by - Tile Size]
# [Coord=+-(Tile Size)]
execute if entity @s[tag=!wall_north] positioned ~ ~ ~-6 if block ~ ~ ~ air run function ikea:adjacent_tiles/place_constructor
execute if entity @s[tag=!wall_south] positioned ~ ~ ~6 if block ~ ~ ~ air run function ikea:adjacent_tiles/place_constructor
execute if entity @s[tag=!wall_east] positioned ~6 ~ ~ if block ~ ~ ~ air run function ikea:adjacent_tiles/place_constructor
execute if entity @s[tag=!wall_west] positioned ~-6 ~ ~ if block ~ ~ ~ air run function ikea:adjacent_tiles/place_constructor