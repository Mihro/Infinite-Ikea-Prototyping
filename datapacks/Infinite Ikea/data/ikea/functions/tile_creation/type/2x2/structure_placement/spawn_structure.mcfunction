#say Spawn 2x2 structure

summon minecraft:area_effect_cloud ~ ~ ~ {Duration:100,CustomName:'"Root"',Tags:["tile_creation","tile_root"],Rotation:[0.0f,-90.0f]}

# Find a valid placement
function ikea:tile_creation/type/2x2/structure_placement/placement_position/find_placement

# Set structure block data
execute if block ~1 ~ ~ yellow_concrete at @e[tag=chosen_placement] run function ikea:tile_creation/type/2x2/structure_placement/data/set_data

execute if block ~1 ~ ~ lime_concrete at @e[tag=chosen_placement] run function ikea:tile_creation/type/2x2/structure_placement/trigger_structure_blocks

kill @e[tag=tile_creation]