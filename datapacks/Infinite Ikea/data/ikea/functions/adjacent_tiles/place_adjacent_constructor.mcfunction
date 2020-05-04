tellraw @a {"text":"Adjacent constructed"}

# White = Tile 'not constructed' state
setblock ~ ~ ~ white_concrete

setblock ~ ~-1 ~ minecraft:command_block[facing=up]{Command:"function ikea:room_select/constructor"}