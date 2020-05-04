execute unless block ~4 ~ ~ air run tag @s add has_wall
execute unless block ~-4 ~ ~ air run tag @s add has_wall
execute unless block ~ ~ ~4 air run tag @s add has_wall
execute unless block ~ ~ ~-4 air run tag @s add has_wall
execute if entity @s[tag=has_wall] run say Needs wall

# If adjacent tile block not air then a wall is needed
execute unless block ~4 ~ ~ air run tellraw @a {"text":"East wall needed"}
execute unless block ~4 ~ ~ air run tag @s add east_wall
execute unless block ~-4 ~ ~ air run tellraw @a {"text":"West wall needed"}
execute unless block ~-4 ~ ~ air run tag @s add west_wall
execute unless block ~ ~ ~4 air run tellraw @a {"text":"South wall needed"}
execute unless block ~ ~ ~4 air run tag @s add south_wall
execute unless block ~ ~ ~-4 air run tellraw @a {"text":"North wall needed"}
execute unless block ~ ~ ~-4 air run tag @s add north_wall

# Remove tag if true for already placed tile
#execute if block ~4 ~ ~ structure_block run tag @s remove east_wall
#execute if block ~-4 ~ ~ structure_block run tag @s remove west_wall
#execute if block ~ ~ ~4 structure_block run tag @s remove south_wall
#execute if block ~ ~ ~-4 structure_block run tag @s remove north_wall
#execute if block ~4 ~ ~ command_block run tag @s remove east_wall
#execute if block ~-4 ~ ~ command_block run tag @s remove west_wall
#execute if block ~ ~ ~4 command_block run tag @s remove south_wall
#execute if block ~ ~ ~-4 command_block run tag @s remove north_wall
execute if block ~4 ~ ~ redstone_block run tag @s remove east_wall
execute if block ~-4 ~ ~ redstone_block run tag @s remove west_wall
execute if block ~ ~ ~4 redstone_block run tag @s remove south_wall
execute if block ~ ~ ~-4 redstone_block run tag @s remove north_wall
execute if block ~4 ~ ~ white_concrete run tag @s remove east_wall
execute if block ~-4 ~ ~ white_concrete run tag @s remove west_wall
execute if block ~ ~ ~4 white_concrete run tag @s remove south_wall
execute if block ~ ~ ~-4 white_concrete run tag @s remove north_wall
execute if block ~4 ~ ~ orange_concrete run tag @s remove east_wall
execute if block ~-4 ~ ~ orange_concrete run tag @s remove west_wall
execute if block ~ ~ ~4 orange_concrete run tag @s remove south_wall
execute if block ~ ~ ~-4 orange_concrete run tag @s remove north_wall

# If block is air then a constructor is placed
execute if entity @s[tag=!east_wall] positioned ~4 ~ ~ if block ~ ~ ~ air run function ikea:adjacent_tile/place_adjacent_constructor
execute if entity @s[tag=!west_wall] positioned ~-4 ~ ~ if block ~ ~ ~ air run function ikea:adjacent_tile/place_adjacent_constructor
execute if entity @s[tag=!south_wall] positioned ~ ~ ~4 if block ~ ~ ~ air run function ikea:adjacent_tile/place_adjacent_constructor
execute if entity @s[tag=!north_wall] positioned ~ ~ ~-4 if block ~ ~ ~ air run function ikea:adjacent_tile/place_adjacent_constructor