execute positioned ~1 ~ ~ if block ~ ~ ~ #ikea:uninitialized_origin_block run say Origin not obstructed
execute positioned ~1 ~ ~ if block ~1 ~ ~ #ikea:uninitialized_state_block run say State not obstructed

execute positioned ~1 ~ ~ unless block ~ ~ ~ #ikea:uninitialized_origin_block run say Origin obstructed
execute positioned ~1 ~ ~ unless block ~1 ~ ~ #ikea:uninitialized_state_block run say State obstructed