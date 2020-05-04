# Print 'Type: #    Index: #'
tellraw @a [{"text":"Type: "},{"score":{"name":"@s","objective":"tileType"},"italic":true},{"text":"    Index: "},{"score":{"name":"@s","objective":"tilePoolIndex"},"italic":true}]

# Print 'Walls: Yes|No'
#       'North|South|East|West'
#execute if score @s tileWallsBin matches 0 run tellraw @a [{  "text": "Walls: "},{"text": "No", "italic": true}]
#execute if score @s tileWallsBin matches 1.. run tellraw @a [{"text": "Walls: "},{"text":"Yes", "italic": true}]
#execute if score @s tileWallsBin matches 1 run tellraw @a {   "text": "North                ",  "italic": true}
#execute if score @s tileWallsBin matches 2 run tellraw @a {   "text": "      South          ",  "italic": true}
#execute if score @s tileWallsBin matches 3 run tellraw @a {   "text": "North South          ",  "italic": true}
#execute if score @s tileWallsBin matches 4 run tellraw @a {   "text": "            East     ",  "italic": true}
#execute if score @s tileWallsBin matches 5 run tellraw @a {   "text": "North       East     ",  "italic": true}
#execute if score @s tileWallsBin matches 6 run tellraw @a {   "text": "      South East     ",  "italic": true}
#execute if score @s tileWallsBin matches 7 run tellraw @a {   "text": "North South East     ",  "italic": true}
#execute if score @s tileWallsBin matches 8 run tellraw @a {   "text": "                 West",  "italic": true}
#execute if score @s tileWallsBin matches 9 run tellraw @a {   "text": "North            West",  "italic": true}
#execute if score @s tileWallsBin matches 10 run tellraw @a {  "text": "      South      West",  "italic": true}
#execute if score @s tileWallsBin matches 11 run tellraw @a {  "text": "North South      West",  "italic": true}
#execute if score @s tileWallsBin matches 12 run tellraw @a {  "text": "            East West",  "italic": true}
#execute if score @s tileWallsBin matches 13 run tellraw @a {  "text": "North       East West",  "italic": true}
#execute if score @s tileWallsBin matches 14 run tellraw @a {  "text": "      South East West",  "italic": true}
#execute if score @s tileWallsBin matches 15 run tellraw @a {  "text": "North South East West",  "italic": true}

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
