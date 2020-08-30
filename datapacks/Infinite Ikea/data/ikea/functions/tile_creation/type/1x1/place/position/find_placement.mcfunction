summon area_effect_cloud ^ ^ ^ {Duration:100,Tags:["tile_creation","find_placement","valid_placement","rotate_0"  ],Rotation:[270.0f,0.0f]}
summon area_effect_cloud ^ ^ ^ {Duration:100,Tags:["tile_creation","find_placement","valid_placement","rotate_90" ],Rotation:[  0.0f,0.0f]}
summon area_effect_cloud ^ ^ ^ {Duration:100,Tags:["tile_creation","find_placement","valid_placement","rotate_180"],Rotation:[ 90.0f,0.0f]}
summon area_effect_cloud ^ ^ ^ {Duration:100,Tags:["tile_creation","find_placement","valid_placement","rotate_270"],Rotation:[180.0f,0.0f]}

# Choose a single placement and kill others
tag @e[tag=valid_placement,sort=random,limit=1] add chosen_placement
kill @e[tag=find_placement,tag=!chosen_placement]
