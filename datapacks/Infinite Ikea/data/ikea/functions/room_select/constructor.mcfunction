summon minecraft:area_effect_cloud ~ ~ ~ {Duration:200,Tags:["room_origin"]}
execute as @e[type=minecraft:area_effect_cloud,tag=room_origin,distance=..1] run function ikea:room_select/select_room