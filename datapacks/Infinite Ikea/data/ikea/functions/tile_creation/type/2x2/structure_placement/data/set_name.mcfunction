execute at @e[tag=tile_root] run data modify storage ikea:tile_data_temp 2x2.structure set from block ~ ~ ~1 Items[0].tag.ikea.structure

execute at @e[tag=chosen_placement] run data modify block ^ ^ ^ name set from storage ikea:tile_data_temp 2x2.structure.1
execute at @e[tag=chosen_placement] run data modify block ^ ^ ^7 name set from storage ikea:tile_data_temp 2x2.structure.2
execute at @e[tag=chosen_placement] run data modify block ^-7 ^ ^ name set from storage ikea:tile_data_temp 2x2.structure.3
execute at @e[tag=chosen_placement] run data modify block ^-7 ^ ^7 name set from storage ikea:tile_data_temp 2x2.structure.4

#data remove storage ikea:tile_data_temp 2x2