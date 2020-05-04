### Spawn rng controller entity.
summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["rng"]}

### +1 score then create another 'rng' entity until 'count' = 'max' score.
scoreboard players add @e[tag=rng,distance=..1] tileStructNum 1
execute store result score count tileStructNum if entity @e[type=minecraft:area_effect_cloud,tag=rng,distance=..1]
execute if score count tileStructNum < max tileStructNum run function ikea:rng/roll_tile_number_score

### When AEC 'count' = 'max', choose random 'rng' entity's score.
execute if score count tileStructNum >= max tileStructNum run scoreboard players operation @s tileStructNum = @e[type=minecraft:area_effect_cloud,distance=..1,tag=rng,sort=random,limit=1] tileStructNum

### Kill 'rng' AECs. Stop recursive calls.
kill @e[type=area_effect_cloud,distance=..1,tag=rng]