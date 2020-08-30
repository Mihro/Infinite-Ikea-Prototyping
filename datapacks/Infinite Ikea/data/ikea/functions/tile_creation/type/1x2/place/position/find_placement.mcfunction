# Mark valid directions (4)
function ikea:tile_creation/type/1x2/place/position/find_directions
# Mark valid placements in valid directions (16)
execute at @e[tag=placement_direction] run function ikea:tile_creation/type/1x2/place/position/find_orientations

# Choose a single placement and kill others
tag @e[tag=valid_placement,sort=random,limit=1] add chosen_placement
kill @e[tag=find_placement,tag=!chosen_placement]
