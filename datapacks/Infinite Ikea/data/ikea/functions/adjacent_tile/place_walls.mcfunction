say Place_walls called

execute if entity @s[tag=north_wall] run fill ~ ~3 ~-1 ~3 ~3 ~-1 black_concrete
execute if entity @s[tag=south_wall] run fill ~ ~3 ~4 ~3 ~3 ~4 black_concrete
execute if entity @s[tag=east_wall] run fill ~4 ~3 ~ ~4 ~3 ~3 black_concrete
execute if entity @s[tag=west_wall] run fill ~-1 ~3 ~ ~-1 ~3 ~3 black_concrete