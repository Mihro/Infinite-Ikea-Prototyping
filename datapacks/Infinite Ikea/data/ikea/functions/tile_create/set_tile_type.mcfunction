# Random type. Total Weight = 4
scoreboard players set @s rng 4
function ikea:rng/random_from_self_score

# Weighted rng to TileType
# [ Weight: 75% ]
execute if score @s rng matches 1..3 run scoreboard players set @s TileType 1
# [ Weight: 25% ]
execute if score @s rng matches 4 run scoreboard players set @s TileType 2

execute if score @s TileType matches 1 run setblock ~3 ~ ~ white_concrete
execute if score @s TileType matches 2 run setblock ~3 ~ ~ orange_concrete