# Random number. Pool size = 4
scoreboard players set @s rng 4
function ikea:rng/random_from_self_score

# Linear rng to TileIndex
scoreboard players operation @s TileIndex = @s rng

# Weighted example
# [ Weight: 75% ]
#execute if score @s rng matches 1..3 run scoreboard players set @s TileIndex 1
# [ Weight: 25% ]
#execute if score @s rng matches 4 run scoreboard players set @s TileIndex 2