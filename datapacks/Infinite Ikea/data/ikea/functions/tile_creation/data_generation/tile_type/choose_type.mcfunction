# Random Type. Total Weight = 4
scoreboard players set @s rng 4
function ikea:rng/random_from_self_score

# Weighted rng -> TileType
# [ Weight: 75% ]
execute if score @s rng matches 1..3 run scoreboard players set @s TileType 1
# [ Weight: 25% ]
execute if score @s rng matches 4 run scoreboard players set @s TileType 2

# Place data marker block
execute if score @s TileType matches 1 run setblock ~2 ~ ~ white_concrete
execute if score @s TileType matches 2 run setblock ~2 ~ ~ orange_concrete

# Translate score to pool function
execute if score @s TileType matches 1 run function ikea:tile_creation/data_generation/tile_type/type_1x1/generate_1x1_data
execute if score @s TileType matches 2 run function ikea:tile_creation/data_generation/tile_type/type_2x2/generate_2x2_data