# Random number. Pool size = 4
scoreboard players set @s rng 4
function ikea:rng/random_from_self_score

# Weighted rng to TilePoolIndex
# = operation is 1:1
scoreboard players operation @s TilePoolIndex = @s rng

# Set structure block
execute if score @s TilePoolIndex matches 1 run function ikea:tile_pools/pool_2/1
execute if score @s TilePoolIndex matches 2 run function ikea:tile_pools/pool_2/2
execute if score @s TilePoolIndex matches 3 run function ikea:tile_pools/pool_2/3
execute if score @s TilePoolIndex matches 4 run function ikea:tile_pools/pool_2/4

# Trigger structure block
setblock ~1 ~ ~ redstone_block
setblock ~1 ~ ~ stone

# Set Tile State to "Room Placed"
setblock ~2 ~ ~ orange_concrete