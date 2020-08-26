# Random rotation. Total Weight = 4
scoreboard players set @s rng 4
function ikea:rng/random_from_self_score
scoreboard players operation @s TileRotation = @s rng

# [1, 2, 3, 4] = [0, 90, 180, 270] degrees
execute if score @s TileRotation matches 1 run setblock ~3 ~ ~1 minecraft:white_concrete
execute if score @s TileRotation matches 2 run setblock ~3 ~ ~1 minecraft:orange_concrete
execute if score @s TileRotation matches 3 run setblock ~3 ~ ~1 minecraft:magenta_concrete
execute if score @s TileRotation matches 4 run setblock ~3 ~ ~1 minecraft:light_blue_concrete