scoreboard players set @s rng 4
function ikea:rng/random_from_self_score
scoreboard players operation @s TileRotation = @s rng

# if score matches 1: rotation = 0
execute if score @s TileRotation matches 2 run function ikea:tile_pools/rotate_90_pools
execute if score @s TileRotation matches 3 run function ikea:tile_pools/rotate_180_pools
execute if score @s TileRotation matches 4 run function ikea:tile_pools/rotate_270_pools