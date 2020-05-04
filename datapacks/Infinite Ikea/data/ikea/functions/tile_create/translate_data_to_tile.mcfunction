# Translate tile score to room (and place)
execute if score @s roomSelect matches 1 run function ikea:room_pool/1
execute if score @s roomSelect matches 2 run function ikea:room_pool/2
execute if score @s roomSelect matches 3 run function ikea:room_pool/3
execute if score @s roomSelect matches 4 run function ikea:room_pool/4

# Orange = Tile 'room placed' state
setblock ~ ~1 ~ orange_concrete

# Declare function ran
tellraw @a [{"text":"Room "},{"score":{"name":"@s","objective":"roomSelect"},"italic":true},{"text":" placed"}]