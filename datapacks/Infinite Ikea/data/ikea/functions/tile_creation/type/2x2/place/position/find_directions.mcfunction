summon area_effect_cloud ~ ~ ~ {     Duration:100,Tags:["tile_creation","find_placement","placement_direction"],Rotation:[315.0f,0.0f],CustomName:'"SouthEast"'}
summon area_effect_cloud ~-7 ~ ~ {   Duration:100,Tags:["tile_creation","find_placement","placement_direction"],Rotation:[315.0f,0.0f],CustomName:'"SouthWest"'}
summon area_effect_cloud ~ ~ ~-7 {   Duration:100,Tags:["tile_creation","find_placement","placement_direction"],Rotation:[315.0f,0.0f],CustomName:'"NorthEast"'}
summon area_effect_cloud ~-7 ~ ~-7 { Duration:100,Tags:["tile_creation","find_placement","placement_direction"],Rotation:[315.0f,0.0f],CustomName:'"SouthEast"'}

execute as @e[tag=placement_direction] at @s positioned ~ ~ ~ unless entity @e[  tag=tile_root,distance=..1] unless block ~ ~ ~ #ikea:untriggered_root run kill @s
execute as @e[tag=placement_direction] at @s positioned ~7 ~ ~ unless entity @e[ tag=tile_root,distance=..1] unless block ~ ~ ~ #ikea:untriggered_root run kill @s
execute as @e[tag=placement_direction] at @s positioned ~ ~ ~7 unless entity @e[ tag=tile_root,distance=..1] unless block ~ ~ ~ #ikea:untriggered_root run kill @s
execute as @e[tag=placement_direction] at @s positioned ~7 ~ ~7 unless entity @e[tag=tile_root,distance=..1] unless block ~ ~ ~ #ikea:untriggered_root run kill @s
