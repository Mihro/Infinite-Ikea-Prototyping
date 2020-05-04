scoreboard players set @s tileWallsBin 0

# [ Affected by - Tile Size ]
# Wall North [ Z=-(Tile Size)-2 ]
execute unless block ~2 ~ ~-6 air run tag @s add wall_north
execute if block ~2 ~ ~-6 #ikea:concrete run tag @s remove wall_north

# Wall South [ Z=(Tile Size)-2 ]
execute unless block ~2 ~ ~6 air run tag @s add wall_south
execute if block ~2 ~ ~6 #ikea:concrete run tag @s remove wall_south

# Wall East [ X=(Tile Size) ]
execute unless block ~8 ~ ~ air run tag @s add wall_east
execute if block ~8 ~ ~ #ikea:concrete run tag @s remove wall_east

# Wall West [ X=-(Tile Size)+4 ]
execute unless block ~-4 ~ ~ air run tag @s add wall_west
execute if block ~-4 ~ ~ #ikea:concrete run tag @s remove wall_west

# TEMP Clear space for walls
fill ~-1 ~3 ~-1 ~4 ~3 ~4 air replace black_concrete

# Set walls
# [ Affected by - Tile Size, Walkway Width ]
# [ Wall Base Height = 3]
# [ Negative Corner = ( -(Walkway Width)-1, -(Walkway Width)-1 ) ]
# [ Positive Corner = ( (Tile Size-Walkway Width)-2, (Tile Size-Walkway Width)-2 ) ]
# [ Matrix = N(-, 3, -, +, 3, -)]
# [          S(-, 3, +, +, 3, +)]
# [          E(+, 3, -, +, 3, +)]
# [          W(-, 3, -, -, 3, +)]
execute if entity @s[tag=wall_north] run fill ~-1 ~3 ~-2 ~4 ~3 ~-2 black_concrete
execute if entity @s[tag=wall_south] run fill ~-1 ~3 ~5 ~4 ~3 ~5 black_concrete
execute if entity @s[tag=wall_east ] run fill ~5 ~3 ~-1 ~5 ~3 ~4 black_concrete
execute if entity @s[tag=wall_west ] run fill ~-2 ~3 ~-1 ~-2 ~3 ~4 black_concrete

# Encode TileWallsBin to data block
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