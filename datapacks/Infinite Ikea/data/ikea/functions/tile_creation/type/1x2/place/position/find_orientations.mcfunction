# 1x2 tiles following the x-axis direction
execute at @e[tag=1x2_direction_x] run summon area_effect_cloud ~ ~ ~ { Duration:100,Tags:["tile_creation","find_placement","valid_placement","rotate_0"  ],Rotation:[270.0f,0.0f]}
execute at @e[tag=1x2_direction_x] run summon area_effect_cloud ~7 ~ ~ {Duration:100,Tags:["tile_creation","find_placement","valid_placement","rotate_180"],Rotation:[ 90.0f,0.0f]}

# 1x2 tiles following the z-axis direction
execute at @e[tag=1x2_direction_z] run summon area_effect_cloud ~ ~ ~ { Duration:100,Tags:["tile_creation","find_placement","valid_placement","rotate_90" ],Rotation:[  0.0f,0.0f]}
execute at @e[tag=1x2_direction_z] run summon area_effect_cloud ~ ~ ~7 {Duration:100,Tags:["tile_creation","find_placement","valid_placement","rotate_270"],Rotation:[180.0f,0.0f]}
