summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["rng"]}
scoreboard players add @e[tag=rng,distance=..1] roomSelect 1
execute store result score count roomSelect if entity @e[type=minecraft:area_effect_cloud,tag=rng,distance=..1]
execute if score count roomSelect < max roomSelect run function ikea:rng/roll_room_select_score
# When AS count = max:
execute if score count roomSelect >= max roomSelect run scoreboard players operation @s roomSelect = @e[type=minecraft:area_effect_cloud,tag=rng,distance=..1,sort=random,limit=1] roomSelect
kill @e[type=area_effect_cloud,tag=rng,distance=..1]