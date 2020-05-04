tellraw @a "\n=== Selecting room ==="
function ikea:rng/roll_room_select_score
tellraw @a [{"text":"Rolled: "},{"score":{"name":"@s","objective":"roomSelect"},"italic":true}]

# Place current room tile
function ikea:room_select/translate_score_to_room

# Prepare next room tile
function ikea:adjacent_rooms/prepare_adjacent_rooms

kill @s