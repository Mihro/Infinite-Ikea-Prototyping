# Summon 'root' marker
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:100,CustomName:'"Root"',Tags:["tile_creation","tile_root"],Rotation:[0.0f,-90.0f]}

# Find a valid placement
function ikea:tile_creation/type/1x3/place/position/find_placement
# Success check
execute if block ~1 ~ ~ magenta_concrete if entity @e[tag=chosen_placement] run setblock ~1 ~ ~ light_blue_concrete
# If no placement found then spawn a 1x1 tile instead
execute unless entity @e[tag=chosen_placement] run say Defaulting to fitting a 1x1 tile
execute unless entity @e[tag=chosen_placement] run function ikea:tile_creation/type/1x1/default_to/construct_1x1_tile

# Set structure block data
execute if block ~1 ~ ~ light_blue_concrete at @e[tag=chosen_placement] run function ikea:tile_creation/type/1x3/place/data/set_data
# Success check
execute if block ~1 ~ ~ light_blue_concrete unless block ~ ~ ~ structure_block{name:""} run setblock ~1 ~ ~ yellow_concrete

# Trigger structure blocks
execute if block ~1 ~ ~ yellow_concrete at @e[tag=chosen_placement] run function ikea:tile_creation/type/1x3/place/trigger_structure_blocks

# Place adjacent tile triggers
execute if block ~1 ~ ~ yellow_concrete at @e[tag=chosen_placement] run function ikea:tile_creation/type/1x3/place/adjacent/place_adjacent_triggers

kill @e[tag=tile_creation]
execute if block ~1 ~ ~ yellow_concrete run setblock ~1 ~ ~ black_concrete
