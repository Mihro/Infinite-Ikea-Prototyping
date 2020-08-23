#say Type 1x1 -> Pool 2 -> Choose Index
execute if score @s TileIndex matches 1 run data merge block ~ ~ ~ {name:"ikea:dev_4x_tile_bordered/type_1x1/pool_2/1"}
execute if score @s TileIndex matches 2 run data merge block ~ ~ ~ {name:"ikea:dev_4x_tile_bordered/type_1x1/pool_2/2"}
execute if score @s TileIndex matches 3 run data merge block ~ ~ ~ {name:"ikea:dev_4x_tile_bordered/type_1x1/pool_2/3"}
execute if score @s TileIndex matches 4 run data merge block ~ ~ ~ {name:"ikea:dev_4x_tile_bordered/type_1x1/pool_2/4"}