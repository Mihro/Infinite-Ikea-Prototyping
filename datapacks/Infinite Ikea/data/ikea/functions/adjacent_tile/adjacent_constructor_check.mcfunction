# If block not air then a wall is needed
execute unless block ~ ~ ~ air run tellraw @a {"text":"Wall needed"}

# If block is  air then a constructor is placed
execute if block ~ ~ ~ air run tellraw @a {"text":"Adjacent constructed"}
execute if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:command_block[facing=up]{Command:"function ikea:room_select/constructor"}

setblock ~ ~1 ~ diamond_block