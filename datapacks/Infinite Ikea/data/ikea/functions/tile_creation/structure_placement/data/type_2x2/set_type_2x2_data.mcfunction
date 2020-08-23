setblock ~1 ~ ~ magenta_concrete
execute if entity @e[tag=placement_east, distance=..1] run summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["tile_offset"],Rotation:[0.0f,-90.0f]}
execute if entity @e[tag=placement_south,distance=..1] run summon area_effect_cloud ~-7 ~ ~ {Duration:100,Tags:["tile_offset"],Rotation:[0.0f,-90.0f]}
execute if entity @e[tag=placement_west, distance=..1] run summon area_effect_cloud ~-7 ~ ~-7 {Duration:100,Tags:["tile_offset"],Rotation:[0.0f,-90.0f]}
execute if entity @e[tag=placement_north,distance=..1] run summon area_effect_cloud ~ ~ ~-7 {Duration:100,Tags:["tile_offset"],Rotation:[0.0f,-90.0f]}

execute if entity @e[tag=placement_east, distance=..1] positioned ~ ~ ~ at @e[    tag=tile_offset,distance=..1] run function ikea:tile_creation/structure_placement/data/type_2x2/set_data_from_offset
execute if entity @e[tag=placement_south,distance=..1] positioned ~-7 ~ ~ at @e[  tag=tile_offset,distance=..1] run function ikea:tile_creation/structure_placement/data/type_2x2/set_data_from_offset
execute if entity @e[tag=placement_west, distance=..1] positioned ~-7 ~ ~-7 at @e[tag=tile_offset,distance=..1] run function ikea:tile_creation/structure_placement/data/type_2x2/set_data_from_offset
execute if entity @e[tag=placement_north,distance=..1] positioned ~ ~ ~-7 at @e[  tag=tile_offset,distance=..1] run function ikea:tile_creation/structure_placement/data/type_2x2/set_data_from_offset

kill @e[tag=tile_placement,distance=..1]