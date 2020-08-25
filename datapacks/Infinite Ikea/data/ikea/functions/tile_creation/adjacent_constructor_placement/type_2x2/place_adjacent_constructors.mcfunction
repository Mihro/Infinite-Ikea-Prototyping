say Placing constructors
say @s
say @e[distance=..1]

execute at @e[tag=tile_placement,distance=..1] positioned ^7 ^ ^ if block ~ ~ ~ air run function ikea:tile_creation/structure_placement/new_tile/constructor
execute at @e[tag=tile_placement,distance=..1] positioned ^7 ^ ^7 if block ~ ~ ~ air run function ikea:tile_creation/structure_placement/new_tile/constructor
execute at @e[tag=tile_placement,distance=..1] positioned ^ ^ ^14 if block ~ ~ ~ air run function ikea:tile_creation/structure_placement/new_tile/constructor
execute at @e[tag=tile_placement,distance=..1] positioned ^-7 ^ ^14 if block ~ ~ ~ air run function ikea:tile_creation/structure_placement/new_tile/constructor
execute at @e[tag=tile_placement,distance=..1] positioned ^-14 ^ ^ if block ~ ~ ~ air run function ikea:tile_creation/structure_placement/new_tile/constructor
execute at @e[tag=tile_placement,distance=..1] positioned ^-14 ^ ^7 if block ~ ~ ~ air run function ikea:tile_creation/structure_placement/new_tile/constructor
execute at @e[tag=tile_placement,distance=..1] positioned ^ ^ ^-7 if block ~ ~ ~ air run function ikea:tile_creation/structure_placement/new_tile/constructor
execute at @e[tag=tile_placement,distance=..1] positioned ^-7 ^ ^-7 if block ~ ~ ~ air run function ikea:tile_creation/structure_placement/new_tile/constructor