# If adjacent tile's `origin` block is red_wool, then mark direction as a wall
execute unless block ~ ~ ~-7 #ikea:origin_block run tag @s add wall_north
execute unless block ~ ~ ~7 #ikea:origin_block run tag @s add wall_south
execute unless block ~7 ~ ~ #ikea:origin_block run tag @s add wall_east
execute unless block ~-7 ~ ~ #ikea:origin_block run tag @s add wall_west

# Encode wall tags to TileWalls_bin score
scoreboard players set @s TileWalls_bin 0
execute if entity @s[tag=wall_north] run scoreboard players add @s TileWalls_bin 1
execute if entity @s[tag=wall_south] run scoreboard players add @s TileWalls_bin 10
execute if entity @s[tag=wall_east] run scoreboard players add @s TileWalls_bin 100
execute if entity @s[tag=wall_west] run scoreboard players add @s TileWalls_bin 1000

# Encode wall tags to physical data block
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