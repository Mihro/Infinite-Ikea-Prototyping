scoreboard players set @s tileWallsBin 0

# Wall North
execute unless block ~2 ~ ~-4 air run tag @s add wall_north
execute if block ~2 ~ ~-4 #ikea:concrete run tag @s remove wall_north
#execute if entity @s[tag=wall_north] run scoreboard players add @s tileWallsBin 1

# Wall South
execute unless block ~2 ~ ~4 air run tag @s add wall_south
execute if block ~2 ~ ~4 #ikea:concrete run tag @s remove wall_south
#execute if entity @s[tag=wall_south] run scoreboard players add @s tileWallsBin 2

# Wall East
execute unless block ~6 ~ ~ air run tag @s add wall_east
execute if block ~6 ~ ~ #ikea:concrete run tag @s remove wall_east
#execute if entity @s[tag=wall_east] run scoreboard players add @s tileWallsBin 4

# Wall West
execute unless block ~-2 ~ ~ air run tag @s add wall_west
execute if block ~-2 ~ ~ #ikea:concrete run tag @s remove wall_west
#execute if entity @s[tag=wall_west] run scoreboard players add @s tileWallsBin 8

# Decode TileWallsBin to data block
#execute if score @s tileWallsBin matches 0 run setblock ~4 ~ ~ white_concrete
#execute if score @s tileWallsBin matches 1 run setblock ~4 ~ ~ orange_concrete
#execute if score @s tileWallsBin matches 2 run setblock ~4 ~ ~ magenta_concrete
#execute if score @s tileWallsBin matches 3 run setblock ~4 ~ ~ light_blue_concrete
#execute if score @s tileWallsBin matches 4 run setblock ~4 ~ ~ yellow_concrete
#execute if score @s tileWallsBin matches 5 run setblock ~4 ~ ~ lime_concrete
#execute if score @s tileWallsBin matches 6 run setblock ~4 ~ ~ pink_concrete
#execute if score @s tileWallsBin matches 7 run setblock ~4 ~ ~ gray_concrete
#execute if score @s tileWallsBin matches 8 run setblock ~4 ~ ~ light_gray_concrete
#execute if score @s tileWallsBin matches 9 run setblock ~4 ~ ~ cyan_concrete
#execute if score @s tileWallsBin matches 10 run setblock ~4 ~ ~ purple_concrete
#execute if score @s tileWallsBin matches 11 run setblock ~4 ~ ~ blue_concrete
#execute if score @s tileWallsBin matches 12 run setblock ~4 ~ ~ brown_concrete
#execute if score @s tileWallsBin matches 13 run setblock ~4 ~ ~ green_concrete
#execute if score @s tileWallsBin matches 14 run setblock ~4 ~ ~ red_concrete
#execute if score @s tileWallsBin matches 15 run setblock ~4 ~ ~ black_concrete

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

#tag @s[type=player] remove wall_north
#tag @s[type=player] remove wall_south
#tag @s[type=player] remove wall_east
#tag @s[type=player] remove wall_west