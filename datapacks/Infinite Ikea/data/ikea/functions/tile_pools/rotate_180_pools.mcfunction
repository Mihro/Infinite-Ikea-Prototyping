# Passing Rotation Amounts to Pools
# Separated because more complex tiles will have more complex rotation logic

execute if score @s TileType matches 1 run function ikea:tile_pools/pool_1/rotate_180
execute if score @s TileType matches 2 run function ikea:tile_pools/pool_2/rotate_180

# Matches TileType #: Rotate pool_# 180
# etc ...