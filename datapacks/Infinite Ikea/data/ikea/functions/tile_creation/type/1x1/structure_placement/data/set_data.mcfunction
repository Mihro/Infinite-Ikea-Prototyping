setblock ^ ^ ^ structure_block{mode: "LOAD", posY: 3, showboundingbox: 1b}

function ikea:tile_creation/type/1x1/structure_placement/data/set_name
execute unless block ~ ~ ~ structure_block{name:""} run setblock ~1 ~ ~ lime_concrete

function ikea:tile_creation/type/1x1/structure_placement/data/set_rotation