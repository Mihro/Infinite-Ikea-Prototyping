### Spawn new "rng" entity, +1 score, and recurse until "count" = executor's score.
summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["rng"]}
scoreboard players add @e[tag=rng,distance=..1] rng 1
execute store result score count rng if entity @e[type=minecraft:area_effect_cloud,distance=..1,tag=rng]
execute if score count rng < @s rng run function ikea:rng/random_from_self_score

### When AEC "count" = executor's score, choose random "rng" entity's score.
execute if score count rng >= @s rng run scoreboard players operation @s rng = @e[type=minecraft:area_effect_cloud,distance=..1,tag=rng,sort=random,limit=1] rng

### Kill "rng" AECs. Stops recursive calls.
kill @e[type=area_effect_cloud,distance=..1,tag=rng]