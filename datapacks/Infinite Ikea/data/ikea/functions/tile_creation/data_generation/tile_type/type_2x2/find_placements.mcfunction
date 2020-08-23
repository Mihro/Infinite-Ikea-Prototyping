# If adjacent tile 'origin' block is not [air, command_block] then tile is obstructed
execute positioned ~ ~ ~-7 unless block ~ ~ ~ #ikea:uninitialized_origin_block run tag @s add obstruction_north
execute positioned ~ ~ ~7 unless block ~ ~ ~ #ikea:uninitialized_origin_block run tag @s add obstruction_south
execute positioned ~7 ~ ~ unless block ~ ~ ~ #ikea:uninitialized_origin_block run tag @s add obstruction_east
execute positioned ~-7 ~ ~ unless block ~ ~ ~ #ikea:uninitialized_origin_block run tag @s add obstruction_west

# If adjacent tile 'state' block is not [air, white_concrete] then tile is obstructed
execute positioned ~ ~ ~-7 unless block ~1 ~ ~ #ikea:uninitialized_state_block run tag @s add obstruction_north
execute positioned ~ ~ ~7 unless block ~1 ~ ~ #ikea:uninitialized_state_block run tag @s add obstruction_south
execute positioned ~7 ~ ~ unless block ~1 ~ ~ #ikea:uninitialized_state_block run tag @s add obstruction_east
execute positioned ~-7 ~ ~ unless block ~1 ~ ~ #ikea:uninitialized_state_block run tag @s add obstruction_west

# Summon 4 markers facing each direction
summon area_effect_cloud ~ ~ ~ {Duration:100,Rotation:[270.0f,0.0f],CustomName:'"Placement East"', Tags:["tile_placement","placement_east", "opposite_west", "opposite_north"]}
summon area_effect_cloud ~ ~ ~ {Duration:100,Rotation:[  0.0f,0.0f],CustomName:'"Placement South"',Tags:["tile_placement","placement_south","opposite_north","opposite_east" ]}
summon area_effect_cloud ~ ~ ~ {Duration:100,Rotation:[ 90.0f,0.0f],CustomName:'"Placement West"', Tags:["tile_placement","placement_west", "opposite_east", "opposite_south"]}
summon area_effect_cloud ~ ~ ~ {Duration:100,Rotation:[180.0f,0.0f],CustomName:'"Placement North"',Tags:["tile_placement","placement_north","opposite_south","opposite_west" ]}

# Kill placements that are obstructed
execute as @s[tag=obstruction_north] run kill @e[tag=!opposite_north,distance=..1]
execute as @s[tag=obstruction_south] run kill @e[tag=!opposite_south,distance=..1]
execute as @s[tag=obstruction_east ] run kill @e[tag=!opposite_east, distance=..1]
execute as @s[tag=obstruction_west ] run kill @e[tag=!opposite_west, distance=..1]

# Kill placements for 2x2 tiles if the tile in the opposite corner to the origin tile is obstructed
execute as @e[tag=tile_placement,distance=..1] at @s positioned ^-7 ^ ^7 unless block ~1 ~ ~ #ikea:uninitialized_state_block run kill @s

# If no valid tile placements then TileType reverts back to 1
execute unless entity @e[tag=tile_placement,distance=..1] run scoreboard players set @s TileType 1

# Debug output
#execute unless entity @e[tag=tile_placement,distance=..1] run say No valid 2x2 placements
#execute if entity @e[tag=tile_placement,distance=..1] run say Valid placement: @e[tag=tile_placement,distance=..1]

tag @e[type=area_effect_cloud,distance=..1,tag=tile_placement,sort=random,limit=1] add chosen_placement
kill @e[tag=tile_placement,tag=!chosen_placement,distance=..1]
#say Chosen: @e[tag=tile_placement,distance=..1]