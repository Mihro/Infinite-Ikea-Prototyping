#execute if entity @e[tag=chosen_placement,tag=rotate_0 ] run data merge block ~ ~ ~ {}
execute if entity @e[tag=chosen_placement,tag=rotate_90 ] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90",        posX:7, posZ:0}
execute if entity @e[tag=chosen_placement,tag=rotate_180] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_180",       posX:7, posZ:7}
execute if entity @e[tag=chosen_placement,tag=rotate_270] run data merge block ~ ~ ~ {rotation:"COUNTERCLOCKWISE_90", posX:0, posZ:7}