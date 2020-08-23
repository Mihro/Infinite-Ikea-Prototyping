# Random Pool. Total Weight = 1
#scoreboard players set @s rng 1
#function ikea:rng/random_from_self_score

# Linear rng to TilePool
#scoreboard players operation @s TilePool = @s rng

## Weighted rng -> TilePool
## [ Weight: 75% ]
#execute if score @s rng matches 1..3 run scoreboard players set @s TilePool 1
## [ Weight: 25% ]
#execute if score @s rng matches 4 run scoreboard players set @s TilePool 2

#tellraw @a [{"text": "Pool: "}, {"score": {"name": "@s", "objective": "TilePool"}}]

# Translate score to index function
#execute if score @s TilePool matches 1 run function ikea:tile_creation/data_generation/tile_type/type_2x2/pools/pool_1/choose_index

scoreboard players set @s TilePool 1
function ikea:tile_creation/data_generation/tile_type/type_2x2/pools/pool_1/choose_index