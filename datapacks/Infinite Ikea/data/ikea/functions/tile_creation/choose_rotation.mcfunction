# Random rotation. Total Weight = 4
scoreboard players set @s rng 4
function ikea:rng/random_from_self_score
scoreboard players operation @s TileRotation = @s rng

# [1, 2, 3, 4] = [0, 90, 180, 270] degrees
# Set physical data
execute if score @s TileRotation matches 1 run setblock ~2 ~ ~1 minecraft:white_concrete
execute if score @s TileRotation matches 2 run setblock ~2 ~ ~1 minecraft:orange_concrete
execute if score @s TileRotation matches 3 run setblock ~2 ~ ~1 minecraft:magenta_concrete
execute if score @s TileRotation matches 4 run setblock ~2 ~ ~1 minecraft:light_blue_concrete

# Append rotation data to loot item's Lore
execute if score @s TileRotation matches 1 run data modify block ~ ~ ~1 Items[0].tag.display.Lore append value '"Rotation: 0"'
execute if score @s TileRotation matches 2 run data modify block ~ ~ ~1 Items[0].tag.display.Lore append value '"Rotation: 90"'
execute if score @s TileRotation matches 3 run data modify block ~ ~ ~1 Items[0].tag.display.Lore append value '"Rotation: 180"'
execute if score @s TileRotation matches 4 run data modify block ~ ~ ~1 Items[0].tag.display.Lore append value '"Rotation: 270"'