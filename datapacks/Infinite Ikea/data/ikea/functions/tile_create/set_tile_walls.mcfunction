scoreboard players set @s tileWallsBin 0

# Wall North
execute unless block ~2 ~ ~-4 air run tag @s add wall_north
execute if block ~2 ~ ~-4 #ikea:concrete run tag @s remove wall_north

# Wall South
execute unless block ~2 ~ ~4 air run tag @s add wall_south
execute if block ~2 ~ ~4 #ikea:concrete run tag @s remove wall_south

# Wall East
execute unless block ~6 ~ ~ air run tag @s add wall_east
execute if block ~6 ~ ~ #ikea:concrete run tag @s remove wall_east

# Wall West
execute unless block ~-2 ~ ~ air run tag @s add wall_west
execute if block ~-2 ~ ~ #ikea:concrete run tag @s remove wall_west

# Decode TileWallsBin to data block
execute if entity @s[tag=!wall_north, tag=!wall_south, tag=!wall_east, tag=!wall_west] run setblock ~4 ~ ~ white_concrete
execute if entity @s[tag= wall_north, tag=!wall_south, tag=!wall_east, tag=!wall_west] run setblock ~4 ~ ~ orange_concrete
execute if entity @s[tag=!wall_north, tag= wall_south, tag=!wall_east, tag=!wall_west] run setblock ~4 ~ ~ magenta_concrete
execute if entity @s[tag= wall_north, tag= wall_south, tag=!wall_east, tag=!wall_west] run setblock ~4 ~ ~ light_blue_concrete
execute if entity @s[tag=!wall_north, tag=!wall_south, tag= wall_east, tag=!wall_west] run setblock ~4 ~ ~ yellow_concrete
execute if entity @s[tag= wall_north, tag=!wall_south, tag= wall_east, tag=!wall_west] run setblock ~4 ~ ~ lime_concrete
execute if entity @s[tag=!wall_north, tag= wall_south, tag= wall_east, tag=!wall_west] run setblock ~4 ~ ~ pink_concrete
execute if entity @s[tag= wall_north, tag= wall_south, tag= wall_east, tag=!wall_west] run setblock ~4 ~ ~ gray_concrete
execute if entity @s[tag=!wall_north, tag=!wall_south, tag=!wall_east, tag= wall_west] run setblock ~4 ~ ~ light_gray_concrete
execute if entity @s[tag= wall_north, tag=!wall_south, tag=!wall_east, tag= wall_west] run setblock ~4 ~ ~ cyan_concrete
execute if entity @s[tag=!wall_north, tag= wall_south, tag=!wall_east, tag= wall_west] run setblock ~4 ~ ~ purple_concrete
execute if entity @s[tag= wall_north, tag= wall_south, tag=!wall_east, tag= wall_west] run setblock ~4 ~ ~ blue_concrete
execute if entity @s[tag=!wall_north, tag=!wall_south, tag= wall_east, tag= wall_west] run setblock ~4 ~ ~ brown_concrete
execute if entity @s[tag= wall_north, tag=!wall_south, tag= wall_east, tag= wall_west] run setblock ~4 ~ ~ green_concrete
execute if entity @s[tag=!wall_north, tag= wall_south, tag= wall_east, tag= wall_west] run setblock ~4 ~ ~ red_concrete
execute if entity @s[tag= wall_north, tag= wall_south, tag= wall_east, tag= wall_west] run setblock ~4 ~ ~ black_concrete