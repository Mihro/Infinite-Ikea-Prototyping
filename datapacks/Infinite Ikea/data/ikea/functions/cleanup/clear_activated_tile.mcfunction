# Deprecated
#execute if entity @e[tag=tile_placement,tag=placement_east, distance=..1] positioned ~ ~ ~ align xyz run tag @e[type=area_effect_cloud,dx=8,dz=8] add clear_tile_kill
#execute if entity @e[tag=tile_placement,tag=placement_south,distance=..1] positioned ~-7 ~ ~ align xyz run tag @e[type=area_effect_cloud,dx=8,dz=8] add clear_tile_kill
#execute if entity @e[tag=tile_placement,tag=placement_west, distance=..1] positioned ~-7 ~ ~-7 align xyz run tag @e[type=area_effect_cloud,dx=8,dz=8] add clear_tile_kill
#execute if entity @e[tag=tile_placement,tag=placement_north,distance=..1] positioned ~ ~ ~-7 align xyz run tag @e[type=area_effect_cloud,dx=8,dz=8] add clear_tile_kill

tag @e[tag=tile_origin] add clear_tile_kill
tag @e[tag=tile_placement] add clear_tile_kill
tag @e[tag=tile_offset] add clear_tile_kill
tag @e[tag=tile_pivot] add clear_tile_kill
kill @e[tag=clear_tile_kill]

# Clear structure
execute if block ~ ~ ~ structure_block[mode=load] run fill ~ ~2 ~ ~7 ~10 ~7 air replace #ikea:cleanup_tiles
# Clear state
fill ~1 ~ ~ ~3 ~ ~ air replace #ikea:concrete
# Clear trigger_block
fill ~ ~1 ~ ~ ~1 ~ air replace #ikea:trigger_block
# Clear mode=load structure blocks only
fill ~ ~ ~ ~ ~ ~ air replace structure_block[mode=load]