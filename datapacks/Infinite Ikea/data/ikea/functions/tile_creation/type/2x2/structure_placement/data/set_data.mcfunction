#say Set data

# Place structure blocks
setblock ^ ^ ^ structure_block{mode: "LOAD", posY: 3, showboundingbox: 1b}
setblock ^ ^ ^7 structure_block{mode: "LOAD", posY: 3, showboundingbox: 1b}
setblock ^-7 ^ ^ structure_block{mode: "LOAD", posY: 3, showboundingbox: 1b}
setblock ^-7 ^ ^7 structure_block{mode: "LOAD", posY: 3, showboundingbox: 1b}

# Set structure block name data
function ikea:tile_creation/type/2x2/structure_placement/data/set_name

# Set structure block rotation data
function ikea:tile_creation/type/2x2/structure_placement/data/rotation/set_rotation

execute at @e[tag=tile_root] unless block ~ ~ ~ structure_block{name:""} run setblock ~1 ~ ~ lime_concrete