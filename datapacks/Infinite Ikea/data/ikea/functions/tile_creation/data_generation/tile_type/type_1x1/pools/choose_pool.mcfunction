# Random Pool. Total Weight = 4
scoreboard players set @s rng 4
function ikea:rng/random_from_self_score
#tellraw @a [{"text": "RNG: "}, {"score": {"name": "@s", "objective": "rng"}}]

# Weighted rng -> TilePool
# [ Weight: 75% ]
execute if score @s rng matches 1..3 run scoreboard players set @s TilePool 1
# [ Weight: 25% ]
execute if score @s rng matches 4 run scoreboard players set @s TilePool 2

#tellraw @a [{"text": "Pool: "}, {"score": {"name": "@s", "objective": "TilePool"}}]

# Translate score to index function
execute if score @s TilePool matches 1 run function ikea:tile_creation/data_generation/tile_type/type_1x1/pools/pool_1/choose_index
execute if score @s TilePool matches 2 run function ikea:tile_creation/data_generation/tile_type/type_1x1/pools/pool_2/choose_index