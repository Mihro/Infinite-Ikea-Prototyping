#execute if score @s TileRotation matches 1 run data merge block ~ ~ ~ {}
execute if score @s TileRotation matches 2 run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90",  posX:7}
execute if score @s TileRotation matches 3 run data merge block ~ ~ ~ {rotation:"CLOCKWISE_180", posX:7, posZ:7}
execute if score @s TileRotation matches 4 run data merge block ~ ~ ~ {rotation:"COUNTERCLOCKWISE_90",   posZ:7}