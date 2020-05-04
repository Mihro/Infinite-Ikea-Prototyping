# Random number. Pool size = 4
scoreboard players set @s rng 4
function ikea:rng/random_from_self_score
scoreboard players operation @s tilePoolIndex = @s rng

# Set structure block
execute if score @s tilePoolIndex matches 1 run function ikea:tile_pools/pool_1/1
execute if score @s tilePoolIndex matches 2 run function ikea:tile_pools/pool_1/2
execute if score @s tilePoolIndex matches 3 run function ikea:tile_pools/pool_1/3
execute if score @s tilePoolIndex matches 4 run function ikea:tile_pools/pool_1/4

# Trigger structure block
setblock ~1 ~ ~ redstone_block
setblock ~1 ~ ~ stone

# Set Tile State to "Room Placed"
setblock ~2 ~ ~ orange_concrete