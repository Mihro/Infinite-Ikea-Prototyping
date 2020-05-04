### Random type. Max=1
scoreboard players set @s rng 1
function ikea:rng/random_from_self_score
scoreboard players operation @s TileType = @s rng

execute if score @s TileType matches 1 run setblock ~3 ~ ~ white_concrete