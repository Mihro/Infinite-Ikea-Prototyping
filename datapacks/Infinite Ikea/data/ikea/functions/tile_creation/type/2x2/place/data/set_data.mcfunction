# Place structure blocks
setblock ^ ^ ^ structure_block{   mode: "LOAD", posY: 3, showboundingbox: 1b}
setblock ^ ^ ^7 structure_block{  mode: "LOAD", posY: 3, showboundingbox: 1b}
setblock ^-7 ^ ^ structure_block{ mode: "LOAD", posY: 3, showboundingbox: 1b}
setblock ^-7 ^ ^7 structure_block{mode: "LOAD", posY: 3, showboundingbox: 1b}

# Set structure block name data
function ikea:tile_creation/type/2x2/place/data/name/set_name

# Set structure block rotation data
function ikea:tile_creation/type/2x2/place/data/rotation/set_rotation
