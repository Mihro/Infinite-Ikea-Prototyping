#execute if score @s TileRotation matches 1 run data merge block ~ ~ ~ {}
say @s
execute if entity @s[tag=facing_west ] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90",  posX:7}
execute if entity @s[tag=facing_north] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_180", posX:7, posZ:7}
execute if entity @s[tag=facing_east ] run data merge block ~ ~ ~ {rotation:"COUNTERCLOCKWISE_90",   posZ:7}