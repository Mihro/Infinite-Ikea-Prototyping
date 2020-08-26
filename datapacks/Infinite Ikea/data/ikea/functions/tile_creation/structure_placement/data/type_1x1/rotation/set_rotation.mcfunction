#say Set Rotation
#execute if score @s TileRotation matches 1 run say Rotate 0
execute if score @s TileRotation matches 2 run function ikea:tile_creation/structure_placement/data/type_1x1/rotation/rotate_90
execute if score @s TileRotation matches 3 run function ikea:tile_creation/structure_placement/data/type_1x1/rotation/rotate_180
execute if score @s TileRotation matches 4 run function ikea:tile_creation/structure_placement/data/type_1x1/rotation/rotate_270