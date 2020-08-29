# Find a valid placement
function ikea:tile_creation/type/1x1/structure_placement/find_placement
# Success check
execute if entity @e[tag=placement_chosen,distance=..1] run setblock ~1 ~ ~ yellow_concrete

# Set structure block data
execute as @e[tag=placement_chosen,distance=..1] at @s run function ikea:tile_creation/type/1x1/structure_placement/data/set_data

setblock ~1 ~ ~ yellow_concrete
setblock ~ ~1 ~ redstone_block
setblock ~ ~1 ~ air
kill @s

function ikea:tile_creation/type/1x1/structure_placement/adjacent/place_adjacent_triggers