#say Set Rotation
#execute if score @s TileRotation matches 1 run say Rotate 0
execute if score @s TileRotation matches 2 as @e[tag=tile_placement,distance=..1] at @s run function ikea:tile_creation/structure_placement/data/type_2x2/rotation/rotate_90
execute if score @s TileRotation matches 3 as @e[tag=tile_placement,distance=..1] at @s run function ikea:tile_creation/structure_placement/data/type_2x2/rotation/rotate_180
execute if score @s TileRotation matches 4 as @e[tag=tile_placement,distance=..1] at @s run function ikea:tile_creation/structure_placement/data/type_2x2/rotation/rotate_270