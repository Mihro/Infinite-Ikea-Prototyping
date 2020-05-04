# Clear redstone block above so that room structure blocks can be triggered
execute if block ~ ~1 ~ redstone_block run setblock ~ ~1 ~ air

# Translate tile score to room (and place)
execute if score @s roomSelect matches 1 run function ikea:room_pool/1
execute if score @s roomSelect matches 2 run function ikea:room_pool/2
execute if score @s roomSelect matches 3 run function ikea:room_pool/3
execute if score @s roomSelect matches 4 run function ikea:room_pool/4
#execute if score @s roomSelect matches 5 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posY:2,name:"debug16_floor_5"}
#execute if score @s roomSelect matches 6 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posY:2,name:"debug16_floor_6"}
#execute if score @s roomSelect matches 7 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posY:2,name:"debug16_floor_7"}
#execute if score @s roomSelect matches 8 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posY:2,name:"debug16_floor_8"}

# Orange = Tile 'room placed' state
setblock ~ ~1 ~ orange_concrete

# Declare function ran
tellraw @a [{"text":"Room "},{"score":{"name":"@s","objective":"roomSelect"},"italic":true},{"text":" placed"}]