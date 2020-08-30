execute if block ~ ~ ~ #ikea:untriggered_root run setblock ~ ~ ~ command_block[facing=up]{Command:"function ikea:tile_creation/construct_tile",auto:0b} destroy
execute if block ~1 ~ ~ #ikea:untriggered_state run setblock ~1 ~ ~ white_concrete
execute if block ~1 ~ ~ #ikea:untriggered_state run setblock ~ ~1 ~ diamond_block
