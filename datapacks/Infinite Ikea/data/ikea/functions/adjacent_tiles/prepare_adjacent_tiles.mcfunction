#execute positioned ~ ~1 ~ run function ikea:adjacent_rooms/check_adjacent_constructors

#execute if entity @s[tag=has_wall] run function ikea:adjacent_rooms/place_walls

execute if entity @s[tag=!wall_east] positioned ~5 ~ ~ if block ~ ~ ~ air run tellraw @a {"text":"Can place adjacent east"}
execute if entity @s[tag=!wall_east] positioned ~5 ~ ~ if block ~ ~ ~ air run function ikea:adjacent_tiles/place_adjacent