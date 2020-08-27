summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["tile_creation","tile_placement","facing_south"],Rotation:[  0.0f,0.0f],CustomName:'"South"'}
summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["tile_creation","tile_placement","facing_west" ],Rotation:[ 90.0f,0.0f],CustomName:'"West"' }
summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["tile_creation","tile_placement","facing_north"],Rotation:[180.0f,0.0f],CustomName:'"North"'}
summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["tile_creation","tile_placement","facing_east" ],Rotation:[270.0f,0.0f],CustomName:'"East"' }

tag @e[tag=tile_placement,distance=..1,sort=random,limit=1] add placement_chosen
kill @e[tag=tile_placement,tag=!placement_chosen,distance=..1]