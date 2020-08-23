function ikea:tile_creation/structure_placement/data/type_2x2/setblock_structure_blocks

execute if score @s TileRotation matches 1 run summon area_effect_cloud ~ ~ ~ {  Duration:100,Tags:["tile_pivot"],Rotation:[270.0f,0.0f]}
execute if score @s TileRotation matches 2 run summon area_effect_cloud ~7 ~ ~ { Duration:100,Tags:["tile_pivot"],Rotation:[0.0f,  0.0f]}
execute if score @s TileRotation matches 3 run summon area_effect_cloud ~7 ~ ~7 {Duration:100,Tags:["tile_pivot"],Rotation:[90.0f, 0.0f]}
execute if score @s TileRotation matches 4 run summon area_effect_cloud ~ ~ ~7 { Duration:100,Tags:["tile_pivot"],Rotation:[180.0f,0.0f]}

execute if score @s TileRotation matches 1 positioned ~ ~ ~ at @e[  tag=tile_pivot,distance=..1] run function ikea:tile_creation/structure_placement/data/type_2x2/name/choose_pool
execute if score @s TileRotation matches 2 positioned ~7 ~ ~ at @e[ tag=tile_pivot,distance=..1] run function ikea:tile_creation/structure_placement/data/type_2x2/name/choose_pool
execute if score @s TileRotation matches 3 positioned ~7 ~ ~7 at @e[tag=tile_pivot,distance=..1] run function ikea:tile_creation/structure_placement/data/type_2x2/name/choose_pool
execute if score @s TileRotation matches 4 positioned ~ ~ ~7 at @e[ tag=tile_pivot,distance=..1] run function ikea:tile_creation/structure_placement/data/type_2x2/name/choose_pool

execute if score @s TileRotation matches 1 positioned ~ ~ ~ at @e[  tag=tile_pivot,distance=..1] run function ikea:tile_creation/structure_placement/data/type_2x2/rotation/set_rotation
execute if score @s TileRotation matches 2 positioned ~7 ~ ~ at @e[ tag=tile_pivot,distance=..1] run function ikea:tile_creation/structure_placement/data/type_2x2/rotation/set_rotation
execute if score @s TileRotation matches 3 positioned ~7 ~ ~7 at @e[tag=tile_pivot,distance=..1] run function ikea:tile_creation/structure_placement/data/type_2x2/rotation/set_rotation
execute if score @s TileRotation matches 4 positioned ~ ~ ~7 at @e[ tag=tile_pivot,distance=..1] run function ikea:tile_creation/structure_placement/data/type_2x2/rotation/set_rotation