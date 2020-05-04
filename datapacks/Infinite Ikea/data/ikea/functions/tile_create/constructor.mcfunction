execute if block ~1 ~ ~ redstone_block run setblock ~1 ~ ~ stone
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:200,Tags:["room_origin"]}
execute as @e[type=minecraft:area_effect_cloud,distance=..1,tag=room_origin,limit=1] run function ikea:tile_create/create_tile