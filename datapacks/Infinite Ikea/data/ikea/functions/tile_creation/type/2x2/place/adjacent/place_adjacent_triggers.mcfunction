# Left
execute positioned ^7 ^ ^ if block ~1 ~ ~ #ikea:untriggered_state run function ikea:tile_creation/place_trigger
execute positioned ^7 ^ ^7 if block ~1 ~ ~ #ikea:untriggered_state run function ikea:tile_creation/place_trigger
# Forward
execute positioned ^ ^ ^14 if block ~1 ~ ~ #ikea:untriggered_state run function ikea:tile_creation/place_trigger
execute positioned ^-7 ^ ^14 if block ~1 ~ ~ #ikea:untriggered_state run function ikea:tile_creation/place_trigger
# Right
execute positioned ^-14 ^ ^ if block ~1 ~ ~ #ikea:untriggered_state run function ikea:tile_creation/place_trigger
execute positioned ^-14 ^ ^7 if block ~1 ~ ~ #ikea:untriggered_state run function ikea:tile_creation/place_trigger
# Backward
execute positioned ^ ^ ^-7 if block ~1 ~ ~ #ikea:untriggered_state run function ikea:tile_creation/place_trigger
execute positioned ^-7 ^ ^-7 if block ~1 ~ ~ #ikea:untriggered_state run function ikea:tile_creation/place_trigger