# Print 'Type: #    Index: #'
tellraw @a [{"text":"Type: "},{"score":{"name":"@s","objective":"tileType"},"italic":true},{"text":"    Index: "},{"score":{"name":"@s","objective":"tilePoolIndex"},"italic":true}]

# Print 'Walls: Yes|No'
#       'NULL|North|South|East|West'
execute unless entity @s[tag=!wall_north, tag=!wall_south, tag=!wall_east, tag=!wall_west] run tellraw @a [{"text": "Walls: "},{"text":"Yes", "italic": true}]
execute if entity @s[tag= wall_north, tag=!wall_south, tag=!wall_east, tag=!wall_west] run tellraw @a { "text": "North                ",  "italic": true}
execute if entity @s[tag=!wall_north, tag= wall_south, tag=!wall_east, tag=!wall_west] run tellraw @a { "text": "      South          ",  "italic": true}
execute if entity @s[tag= wall_north, tag= wall_south, tag=!wall_east, tag=!wall_west] run tellraw @a { "text": "North South          ",  "italic": true}
execute if entity @s[tag=!wall_north, tag=!wall_south, tag= wall_east, tag=!wall_west] run tellraw @a { "text": "            East     ",  "italic": true}
execute if entity @s[tag= wall_north, tag=!wall_south, tag= wall_east, tag=!wall_west] run tellraw @a { "text": "North       East     ",  "italic": true}
execute if entity @s[tag=!wall_north, tag= wall_south, tag= wall_east, tag=!wall_west] run tellraw @a { "text": "      South East     ",  "italic": true}
execute if entity @s[tag= wall_north, tag= wall_south, tag= wall_east, tag=!wall_west] run tellraw @a { "text": "North South East     ",  "italic": true}
execute if entity @s[tag=!wall_north, tag=!wall_south, tag=!wall_east, tag= wall_west] run tellraw @a { "text": "                 West",  "italic": true}
execute if entity @s[tag= wall_north, tag=!wall_south, tag=!wall_east, tag= wall_west] run tellraw @a { "text": "North            West",  "italic": true}
execute if entity @s[tag=!wall_north, tag= wall_south, tag=!wall_east, tag= wall_west] run tellraw @a { "text": "      South      West",  "italic": true}
execute if entity @s[tag= wall_north, tag= wall_south, tag=!wall_east, tag= wall_west] run tellraw @a { "text": "North South      West",  "italic": true}
execute if entity @s[tag=!wall_north, tag=!wall_south, tag= wall_east, tag= wall_west] run tellraw @a { "text": "            East West",  "italic": true}
execute if entity @s[tag= wall_north, tag=!wall_south, tag= wall_east, tag= wall_west] run tellraw @a { "text": "North       East West",  "italic": true}
execute if entity @s[tag=!wall_north, tag= wall_south, tag= wall_east, tag= wall_west] run tellraw @a { "text": "      South East West",  "italic": true}
execute if entity @s[tag= wall_north, tag= wall_south, tag= wall_east, tag= wall_west] run tellraw @a { "text": "North South East West",  "italic": true}

execute if entity @s[tag=!wall_north, tag=!wall_south, tag=!wall_east, tag=!wall_west] run tellraw @a [{"text": "Walls: "},{"text": "No", "italic": true}]
execute if entity @s[tag=!wall_north, tag=!wall_south, tag=!wall_east, tag=!wall_west] run tellraw @a {"text": "NULL", "italic": true}
