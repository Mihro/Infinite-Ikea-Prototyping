## Summon direction markers for a 1x2 tile on grid squares that cover the source square, biased [-x,-z]
# 1x2 tiles following the x-axis direction
summon area_effect_cloud ~ ~ ~ {  Duration:100,Tags:["tile_creation","find_placement","placement_direction","1x2_direction_x"],Rotation:[270.0f,0.0f]}
summon area_effect_cloud ~-7 ~ ~ {Duration:100,Tags:["tile_creation","find_placement","placement_direction","1x2_direction_x"],Rotation:[270.0f,0.0f]}
# 1x2 tiles following the z-axis direction
summon area_effect_cloud ~ ~ ~ {  Duration:100,Tags:["tile_creation","find_placement","placement_direction","1x2_direction_z"],Rotation:[0.0f,0.0f]}
summon area_effect_cloud ~ ~ ~-7 {Duration:100,Tags:["tile_creation","find_placement","placement_direction","1x2_direction_z"],Rotation:[0.0f,0.0f]}

# Check if each potential placement has its grid squares unobstructed
execute as @e[tag=placement_direction] at @s positioned ^ ^ ^ unless entity @e[  tag=tile_root,distance=..1] unless block ~ ~ ~ #ikea:untriggered_root run kill @s
execute as @e[tag=placement_direction] at @s positioned ^ ^ ^7 unless entity @e[ tag=tile_root,distance=..1] unless block ~ ~ ~ #ikea:untriggered_root run kill @s
