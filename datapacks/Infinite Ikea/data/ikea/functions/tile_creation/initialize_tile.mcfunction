execute if block ~ ~1 ~ redstone_block run setblock ~ ~1 ~ stone
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:100,CustomName:'"Origin"',Tags:["tile_origin"],Rotation:[0.0f,-90.0f]}
execute as @e[type=minecraft:area_effect_cloud,distance=..1,tag=tile_origin,limit=1] run function ikea:tile_creation/create_tile